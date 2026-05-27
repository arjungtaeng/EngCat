#!/usr/bin/env node
/**
 * bump-version.mjs
 * 버전을 한 번에 세 파일에 동기화합니다:
 *   - version.json        {"v": N}
 *   - index.html          window.EC_VER = N
 *   - sw.js               const CACHE = 'engcat-vN'
 *
 * 사용법:
 *   node scripts/bump-version.mjs          # 자동으로 +1
 *   node scripts/bump-version.mjs 285      # 특정 버전 지정
 */

import { readFileSync, writeFileSync } from 'fs';
import { resolve, dirname } from 'path';
import { fileURLToPath } from 'url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');

// 현재 버전 읽기
const versionJson = JSON.parse(readFileSync(resolve(ROOT, 'version.json'), 'utf8'));
const current = versionJson.v;

// 새 버전 결정
const arg = process.argv[2];
const next = arg ? parseInt(arg, 10) : current + 1;

if (isNaN(next) || next <= 0) {
  console.error(`❌ 잘못된 버전: ${arg}`);
  process.exit(1);
}

console.log(`📦 버전 업데이트: ${current} → ${next}`);

// 1. version.json
writeFileSync(resolve(ROOT, 'version.json'), JSON.stringify({ v: next }) + '\n');
console.log('  ✅ version.json');

// 2. index.html — window.EC_VER = N
const htmlPath = resolve(ROOT, 'index.html');
const html = readFileSync(htmlPath, 'utf8');
const newHtml = html.replace(
  /window\.EC_VER\s*=\s*\d+;/,
  `window.EC_VER = ${next};`
);
if (html === newHtml) {
  console.warn('  ⚠️  index.html: window.EC_VER 패턴을 찾지 못했어요.');
} else {
  writeFileSync(htmlPath, newHtml);
  console.log('  ✅ index.html');
}

// 3. sw.js — const CACHE = 'engcat-vN'
const swPath = resolve(ROOT, 'sw.js');
const sw = readFileSync(swPath, 'utf8');
const newSw = sw.replace(
  /const CACHE\s*=\s*'engcat-v\d+'/,
  `const CACHE = 'engcat-v${next}'`
);
if (sw === newSw) {
  console.warn('  ⚠️  sw.js: CACHE 패턴을 찾지 못했어요.');
} else {
  writeFileSync(swPath, newSw);
  console.log('  ✅ sw.js');
}

console.log(`\n🎉 완료! 버전 ${next} 적용됨`);
console.log(`\n다음 단계:`);
console.log(`  git add version.json index.html sw.js`);
console.log(`  git commit -m "chore: bump version to ${next}"`);
