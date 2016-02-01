import test from "ava";
import parser from "..";

test(t => {
  t.same(parser.parse("😂🇬🇧"), ["😂", "🇬🇧"]);
});
