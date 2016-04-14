import test from "ava";
import parser from "..";

test('Emoji only', t => {
  const actual = parser.parse("😂🇬🇧");
  const expected = {
    text: "😂🇬🇧",
    emoji: [
      { character: "😂", indices: [0, 2] },
      { character: "🇬🇧", indices: [2, 6]}
    ]
  };

  t.deepEqual(actual, expected);
});

test('Emoji and text', t => {
  const actual = parser.parse("Hello! 😂 I live in the 🇬🇧");
  const expected = {
    text: "Hello! 😂 I live in the 🇬🇧",
    emoji: [
      { character: "😂", indices: [7, 9] },
      { character: "🇬🇧", indices: [24, 28]}
    ]
  };

  t.deepEqual(actual, expected);
});

test('Text only', t => {
  const actual = parser.parse("Hello world!");
  const expected = {
    text: "Hello world!",
    emoji: []
  };

  t.deepEqual(actual, expected);
});

test('Empty text', t => {
  const actual = parser.parse("");
  const expected = {
    text: "",
    emoji: []
  };

  t.deepEqual(actual, expected);
});

test('Emoji with skin tone modifiers', t => {
  const actual = parser.parse("👍🏻");
  const expected = {
    text: "👍🏻",
    emoji: [
      { character: "👍🏻", indices: [0, 4] }
    ]
  };

  t.deepEqual(actual, expected);
});
