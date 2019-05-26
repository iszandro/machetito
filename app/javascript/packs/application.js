import { bind } from 'wanakana';

document.addEventListener("DOMContentLoaded", function() {
  const hiraganaInput = document.querySelector('.wanakana');
  const katakanaInput = document.querySelector('.wanakana-katakana');

  hiraganaInput && bind(hiraganaInput);
  katakanaInput && bind(katakanaInput, {IMEMode: 'toKatakana'});
});
