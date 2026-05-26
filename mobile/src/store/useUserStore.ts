import { create } from 'zustand';

export type CefrLevel = 'A1' | 'A2' | 'B1' | 'B2' | 'C1' | 'C2';
export type LearningGoal = 'daily' | 'travel' | 'work' | 'exam';

interface UserStore {
  id: string;
  name: string;
  level: CefrLevel;
  goal: LearningGoal;
  streakDays: number;
  totalLearned: number;
  setId: (id: string) => void;
  setName: (name: string) => void;
  setLevel: (level: CefrLevel) => void;
  setGoal: (goal: LearningGoal) => void;
  incrementStreak: () => void;
  incrementLearned: (n: number) => void;
}

export const useUserStore = create<UserStore>((set) => ({
  id:           '',
  name:         '',
  level:        'B1',
  goal:         'daily',
  streakDays:   0,
  totalLearned: 0,
  setId:        (id)   => set({ id }),
  setName:      (name)  => set({ name }),
  setLevel:     (level) => set({ level }),
  setGoal:      (goal)  => set({ goal }),
  incrementStreak:       () => set((s) => ({ streakDays: s.streakDays + 1 })),
  incrementLearned: (n) => set((s) => ({ totalLearned: s.totalLearned + n })),
}));
