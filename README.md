# emoji-lang

[![Build Status](https://travis-ci.org/cameronhunter/emoji-lang.svg?branch=master)](https://travis-ci.org/cameronhunter/emoji-lang) [![NPM Version](https://img.shields.io/npm/v/emoji-lang.svg)](https://npmjs.org/package/emoji-lang) [![License](https://img.shields.io/npm/l/emoji-lang.svg)](https://github.com/cameronhunter/emoji-lang/blob/master/LICENSE.md)

Try it out live in your browser: http://cameronhunter.github.io/emoji-lang

## Example usage

```javascript
import Parser from 'emoji-lang';

console.log(Parser.parse('Hello 🌎!'));
```
returns:
```json
{
  "text": "Hello 🌎!",
  "emoji": [
    { "character": "🌎", "indices": [6, 8] }
  ]
}
```

## Useful resources

* https://r12a.github.io/apps/conversion
