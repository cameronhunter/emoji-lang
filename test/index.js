import test from "ava";
import parser from "..";

test(t => {
  t.deepEqual(parser.parse("😂🇬🇧"), ["😂", "🇬🇧"]);
});
