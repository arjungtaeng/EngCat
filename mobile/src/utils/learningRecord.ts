import AsyncStorage from '@react-native-async-storage/async-storage';

export interface LearningRecord {
  wordIds:     string[];
  sentenceIds: string[];
}

const empty = (): LearningRecord => ({ wordIds: [], sentenceIds: [] });

function dateKey(userId: string, d: Date): string {
  const y   = d.getFullYear();
  const m   = String(d.getMonth() + 1).padStart(2, '0');
  const day = String(d.getDate()).padStart(2, '0');
  return `ec_learned_${userId}_${y}-${m}-${day}`;
}

export function todayKey(userId: string, now: Date = new Date()): string {
  return dateKey(userId, now);
}

export function yesterdayKey(userId: string, now: Date = new Date()): string {
  const d = new Date(now);
  d.setDate(d.getDate() - 1);
  return dateKey(userId, d);
}

export async function loadRecord(key: string): Promise<LearningRecord> {
  try {
    const raw = await AsyncStorage.getItem(key);
    if (!raw) return empty();
    const parsed = JSON.parse(raw);
    return {
      wordIds:     Array.isArray(parsed.wordIds)     ? parsed.wordIds     : [],
      sentenceIds: Array.isArray(parsed.sentenceIds) ? parsed.sentenceIds : [],
    };
  } catch {
    return empty();
  }
}

// markWordDone/markSentenceDone는 빠른 연속 호출이 가능하므로 쓰기를 직렬화.
let writeQueue: Promise<unknown> = Promise.resolve();

function enqueue<T>(fn: () => Promise<T>): Promise<T> {
  const next = writeQueue.then(fn, fn);
  writeQueue = next.catch(() => {});
  return next;
}

export function addWordToToday(userId: string, id: string): Promise<void> {
  return enqueue(async () => {
    const key = todayKey(userId);
    const r = await loadRecord(key);
    if (!r.wordIds.includes(id)) {
      r.wordIds.push(id);
      await AsyncStorage.setItem(key, JSON.stringify(r));
    }
  });
}

export function addSentenceToToday(userId: string, id: string): Promise<void> {
  return enqueue(async () => {
    const key = todayKey(userId);
    const r = await loadRecord(key);
    if (!r.sentenceIds.includes(id)) {
      r.sentenceIds.push(id);
      await AsyncStorage.setItem(key, JSON.stringify(r));
    }
  });
}
