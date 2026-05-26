import { create } from 'zustand';
import { addWordToToday, addSentenceToToday } from '../utils/learningRecord';

export interface WordCard {
  id: string;
  type: 'word';
  en: string;
  ipa: string;
  pos: string;
  ko: string;
  def: string;
  examples: { en: string; ko: string }[];
  cefr: string;
  priority: number;
  topicId: string;
  tint: string;
  img: string | null;
  imgKey: string;
}

export interface SentenceCard {
  id: string;
  type: 'pattern' | 'collocation' | 'idiom' | 'nuance';
  en: string;
  ko: string;
  highlight?: string;
  tip?: string;
  sit?: string;
  examples?: { en: string; ko: string }[];
  // collocation
  verb?: string;
  noun?: string;
  wrongVerb?: string;
  ex1?: string; ex1Ko?: string;
  ex2?: string; ex2Ko?: string;
  // idiom
  literalKo?: string;
  ex3?: string; ex3Ko?: string;
  // nuance
  wordA?: string; wordB?: string; wordC?: string;
  koA?: string; koB?: string; koC?: string;
  comparison?: string;
  exA?: string; exB?: string; exC?: string;
  cefr: string;
  priority: number;
  topicId: string;
  tint: string;
  img: string | null;
}

interface CardsStore {
  words: WordCard[];
  sentences: SentenceCard[];
  expressions: SentenceCard[];
  wordIndex: number;
  sentenceIndex: number;
  completedWordIds: Set<string>;
  completedSentenceIds: Set<string>;
  bookmarkedIds: Set<string>;
  setWords: (words: WordCard[]) => void;
  setSentences: (sentences: SentenceCard[]) => void;
  setExpressions: (expressions: SentenceCard[]) => void;
  setWordIndex: (i: number) => void;
  setSentenceIndex: (i: number) => void;
  markWordDone: (id: string) => void;
  markSentenceDone: (id: string) => void;
  toggleBookmark: (id: string) => void;
  resetDaily: () => void;
}

export const useCardsStore = create<CardsStore>((set) => ({
  words: [],
  sentences: [],
  expressions: [],
  wordIndex: 0,
  sentenceIndex: 0,
  completedWordIds: new Set(),
  completedSentenceIds: new Set(),
  bookmarkedIds: new Set(),
  setWords:       (words)       => set({ words }),
  setSentences:   (sentences)   => set({ sentences }),
  setExpressions: (expressions) => set({ expressions }),
  setWordIndex:       (wordIndex)       => set({ wordIndex }),
  setSentenceIndex:   (sentenceIndex)   => set({ sentenceIndex }),
  markWordDone: (id) => {
    set((s) => {
      const next = new Set(s.completedWordIds);
      next.add(id);
      return { completedWordIds: next };
    });
    addWordToToday(id);
  },
  markSentenceDone: (id) => {
    set((s) => {
      const next = new Set(s.completedSentenceIds);
      next.add(id);
      return { completedSentenceIds: next };
    });
    addSentenceToToday(id);
  },
  toggleBookmark: (id) => set((s) => {
    const next = new Set(s.bookmarkedIds);
    if (next.has(id)) next.delete(id); else next.add(id);
    return { bookmarkedIds: next };
  }),
  resetDaily: () => set({
    wordIndex: 0, sentenceIndex: 0,
    completedWordIds: new Set(), completedSentenceIds: new Set(),
  }),
}));
