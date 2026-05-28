-- Add usage_frequency field to all content tables
-- 1-5 scale: 1-2 (rare), 3-4 (common), 5 (very common)

ALTER TABLE words ADD COLUMN IF NOT EXISTS usage_frequency INT DEFAULT 2;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS usage_frequency INT DEFAULT 2;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS usage_frequency INT DEFAULT 2;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS usage_frequency INT DEFAULT 1;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS usage_frequency INT DEFAULT 1;

-- 자주 사용되는 단어/표현에 높은 빈도 할당
UPDATE words 
SET usage_frequency = 4 
WHERE en IN ('be', 'have', 'do', 'can', 'will', 'would', 'could', 'should', 'like', 'go', 'make', 'get', 'come', 'say', 'give', 'know', 'think', 'take', 'see', 'need');

UPDATE sentences 
SET usage_frequency = 4 
WHERE en ILIKE '%can you%' 
   OR en ILIKE '%could you%' 
   OR en ILIKE '%would you%' 
   OR en ILIKE '%do you%' 
   OR en ILIKE '%have you%'
   OR en ILIKE '%thank you%'
   OR en ILIKE '%please%';

-- 매우 자주 사용되는 표현
UPDATE sentences 
SET usage_frequency = 5 
WHERE en IN ('What?', 'Yes', 'No', 'Okay', 'Sure', 'Thanks', 'Thank you', 'Please', 'Help!')
   OR en ILIKE 'I\'d like%';
