-- Fix: nuc_discussion_18 (quite vs fairly vs pretty) had Korean parenthetical in ex_a
-- Removed "(UK = 매우, US = 그럭저럭)" — that nuance belongs in the comparison field

UPDATE nuances SET
  ex_a = 'The film was quite good.'
WHERE id = 'nuc_discussion_18';
