start
  = characters:Character*
    { return { text: text(), emoji: characters.filter(x => !!x) }; }

Character
  = Emoji
    { return { character: text(), indices: [location().start.offset, location().end.offset] }; }
  / .
    { return null; }

// https://en.wikipedia.org/wiki/Emoji#Unicode_blocks
Emoji "emoji"
  = Regional_Indicator_Symbol
  / Miscellaneous_Symbols_and_Pictographs
  / Supplemental_Symbols_and_Pictographs
  / Emoticons
  / Transport_and_Map_Symbols
  / Miscellaneous_Symbols
  / Dingbats
  / Arrows
  / Basic_Latin
  / CJK_Symbols_and_Punctuation
  / Enclosed_Alphanumeric_Supplement
  / Enclosed_Alphanumerics
  / Enclosed_Ideographic_Supplement
  / General_Punctuation
  / Geometric_Shapes
  / Latin1_Supplement
  / Letterlike_Symbols
  / Mahjong_Tiles
  / Miscellaneous_Symbols_and_Arrows
  / Miscellaneous_Technical
  / Playing_cards
  / Supplemental_ArrowsB

// https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
Regional_Indicator_Symbol
  = "\uD83C" [\uDDE6-\uDDFF] "\uD83C" [\uDDE6-\uDDFF] // U+1F1E6 - U+1F1FF

// https://en.wikipedia.org/wiki/Miscellaneous_Symbols_and_Pictographs
Miscellaneous_Symbols_and_Pictographs
  = Miscellaneous_Symbols_and_Pictographs_Diversity Fitzpatrick_Modifier
  / "\uD83C" [\uDF00-\uDF21] // U+1F300 - U+1F321
  / "\uD83C" [\uDF24-\uDF93] // U+1F324 - U+1F393
  / "\uD83C" [\uDF96-\uDF97] // U+1F396 - U+1F397
  / "\uD83C" [\uDF99-\uDF9B] // U+1F399 - U+1F39B
  / "\uD83C" [\uDF9E-\uDFF0] // U+1F39E - U+1F3F0
  / "\uD83C" [\uDFF3-\uDFF5] // U+1F3F3 - U+1F3F5
  / [\uD83C-\uD83D] [\uDCFD-\uDFF7] // U+1F3F7 - U+1F4FD
  / "\uD83D" [\uDCFF-\uDD3D] // U+1F4FF - U+1F53D
  / "\uD83D" [\uDD49-\uDD4E] // U+1F549 - U+1F54E
  / "\uD83D" [\uDD50-\uDD67] // U+1F550 - U+1F567
  / "\uD83D" [\uDD6F-\uDD70] // U+1F56F - U+1F570
  / "\uD83D" [\uDD73-\uDD79] // U+1F573 - U+1F579
  / "\uD83D" "\uDD87" // U+1F587
  / "\uD83D" [\uDD8A-\uDD8D] // U+1F58A - U+1F58D
  / "\uD83D" "\uDD90" // U+1F590
  / "\uD83D" [\uDD95-\uDD96] // U+1F595 - U+1F596
  / "\uD83D" "\uDDA5" // U+1F5A5
  / "\uD83D" "\uDDA8" // U+1F5A8
  / "\uD83D" [\uDDB1-\uDDB2] // U+1F5B1 - U+1F5B2
  / "\uD83D" "\uDDBC" // U+1F5BC
  / "\uD83D" [\uDDC2-\uDDC4] // U+1F5C2 - U+1F5C4
  / "\uD83D" [\uDDD1-\uDDD3] // U+1F5D1 - U+1F5D3
  / "\uD83D" [\uDDDC-\uDDDE] // U+1F5DC - U+1F5DE
  / "\uD83D" "\uDDE1" // U+1F5E1
  / "\uD83D" "\uDDE3" // U+1F5E3
  / "\uD83D" "\uDDE8" // U+1F5E8
  / "\uD83D" "\uDDEF" // U+1F5EF
  / "\uD83D" "\uDDF3" // U+1F5F3
  / "\uD83D" [\uDDFA-\uDDFF] // U+1F5FA - U+1F5FF

// https://en.wikipedia.org/wiki/Miscellaneous_Symbols_and_Pictographs#Diversity
Miscellaneous_Symbols_and_Pictographs_Diversity
  = "\uD83C" "\uDF85"
  / "\uD83C" ("\uDFC3" / "\uDFC4")
  / "\uD83C" ("\uDFCA" / "\uDFCB")
  / "\uD83D" ("\uDC42" / "\uDC43")
  / "\uD83D" [\uDC46-\uDC50]
  / "\uD83D" [\uDC66-\uDC69]
  / "\uD83D" "\uDC6E"
  / "\uD83D" [\uDC70-\uDC78]
  / "\uD83D" "\uDC7C"
  / "\uD83D" [\uDC81-\uDC83]
  / "\uD83D" [\uDC85-\uDC87]
  / "\uD83D" "\uDCAA"
  / "\uD83D" "\uDD75"
  / "\uD83D" "\uDD90"
  / "\uD83D" ("\uDD95" / "\uDD96")

// https://en.wikipedia.org/wiki/Supplemental_Symbols_and_Pictographs
Supplemental_Symbols_and_Pictographs
  = "\uD83E" [\uDD00-\uDDFF] // U+1F900 - U+1F9FF

// https://en.wikipedia.org/wiki/Emoticons_(Unicode_block)
Emoticons
  = "\uD83D" [\uDE00-\uDE4F] // U+1F600 - U+1F64F

// https://en.wikipedia.org/wiki/Transport_and_Map_Symbols
Transport_and_Map_Symbols
  = "\uD83D" [\uDE80-\uDEC5] // U+1F680 - U+1F6C5
  / "\uD83D" [\uDECB-\uDED0] // U+1F6CB - U+1F6D0
  / "\uD83D" [\uDEE0-\uDEE5] // U+1F6E0 - U+1F6E5
  / "\uD83D" "\uDEE9" // U+1F6E9
  / "\uD83D" [\uDEEB-\uDEEC] // U+1F6EB - U+1F6EC
  / "\uD83D" "\uDEF0" // U+1F6F0
  / "\uD83D" "\uDEF3" // U+1F6F3

// https://en.wikipedia.org/wiki/Miscellaneous_Symbols
Miscellaneous_Symbols
  = [\u2600-\u26FF] // U+2600 - U+26FF

// https://en.wikipedia.org/wiki/Dingbat#Emoji
Dingbats
  = "\u2712" // U+2712
  / "\u2714" // U+2714
  / "\u2716" // U+2716
  / "\u271D" // U+271D
  / "\u2721" // U+2721
  / "\u2728" // U+2728
  / [\u2733-\u2734] // U+2733 - U+2734
  / "\u2744" // U+2744
  / "\u2747" // U+2747
  / "\u274C" // U+274C
  / "\u274E" // U+274E
  / [\u2753-\u2755] // U+2753 - U+2755
  / "\u2757" // U+2757
  / [\u2763-\u2764] // U+2763 - U+2764
  / [\u2795-\u2797] // U+2795 - U+2797
  / "\u27A1" // U+27A1
  / "\u27B0" // U+27B0
  / "\u27BF" // U+27BF
  / "\u2702" // U+2702
  / "\u2705" // U+2705
  / [\u2708-\u270D] // U+2708 - U+270D
  / "\u270F" // U+270F

// https://en.wikipedia.org/wiki/Arrows_(Unicode_block)
Arrows
  = [\u2194-\u2199] // U+2194 - U+2199
  / [\u21A9-\u21AA] // U+21A9 - U+21AA

// https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)#Emoji
Basic_Latin
  = "\u0023" // U+0023
  / "\u002A" // U+002A
  / [\u0030-\u0039] // U+0030 - U+0039

// https://en.wikipedia.org/wiki/CJK_Symbols_and_Punctuation
CJK_Symbols_and_Punctuation
  = "\u3030" // U+3030
  / "\u303D" // U+303D

// https://en.wikipedia.org/wiki/Enclosed_Alphanumeric_Supplement
Enclosed_Alphanumeric_Supplement
  = "\uD83C" [\uDD70-\uDD71] // U+1F170 - U+1F171
  / "\uD83C" [\uDD7E-\uDD7F] // U+1F17E - U+1F17F
  / "\uD83C" "\uDD8E" // U+1F18E
  / "\uD83C" [\uDD91-\uDD9A] // U+1F191 - U+1F19A
  / "\uD83C" [\uDDE6-\uDDFF] // U+1F1E6 - U+1F1FF

// https://en.wikipedia.org/wiki/Enclosed_Alphanumerics#Emoji
Enclosed_Alphanumerics
  = "\u24C2" // U+24C2

// https://en.wikipedia.org/wiki/Enclosed_CJK_Letters_and_Months
Enclosed_CJK_Letters_and_Months
  = "\u3297" // U+3297
  / "\u3299" // U+3299

// https://en.wikipedia.org/wiki/Enclosed_Ideographic_Supplement
Enclosed_Ideographic_Supplement
  = "\uD83C" [\uDE01-\uDE02] // U+1F201 - U+1F202
  / "\uD83C" "\uDE1A" // U+1F21A
  / "\uD83C" "\uDE2F" // U+1F22F
  / "\uD83C" [\uDE32-\uDE3A] // U+1F232 - U+1F23A
  / "\uD83C" [\uDE50-\uDE51] // U+1F250 - U+1F251

// https://en.wikipedia.org/wiki/General_Punctuation_(Unicode_block)
General_Punctuation
  = "\u203C" // U+203C
  / "\u2049" // U+2049

// https://en.wikipedia.org/wiki/Geometric_Shapes#Emoji
Geometric_Shapes
  = [\u25AA-\u25AB] // U+25AA - U+25AB
  / "\u25B6" // U+25B6
  / "\u25C0" // U+25C0
  / [\u25FB-\u25FE] // U+25FB - U+25FE

// https://en.wikipedia.org/wiki/Latin-1_Supplement_(Unicode_block)#Emoji
Latin1_Supplement
  = "\u00A9" // U+00A9
  / "\u00AE" // U+00AE

// https://en.wikipedia.org/wiki/Letterlike_Symbols#Emoji
Letterlike_Symbols
  = "\u2122" // U+2122
  / "\u2139" // U+2139

// https://en.wikipedia.org/wiki/Mahjong_Tiles_(Unicode_block)
Mahjong_Tiles
  = "\uD83C" "\uDC04" // U+1F004

// https://en.wikipedia.org/wiki/Miscellaneous_Symbols_and_Arrows
Miscellaneous_Symbols_and_Arrows
  = [\u2B05-\u2B07] // U+2B05 - U+2B07
  / [\u2B1B-\u2B1C] // U+2B1B - U+2B1C
  / "\u2B50" // U+2B50
  / "\u2B55" // U+2B55

// https://en.wikipedia.org/wiki/Miscellaneous_Technical#Emoji
Miscellaneous_Technical
  = [\u231A-\u231B] // U+231A - U+231B
  / "\u2328" // U+2328
  / "\u23CF" // U+23CF
  / [\u23E9-\u23F3] // U+23E9 - U+23F3
  / [\u23F8-\u23FA] // U+23F8 - U+23FA

// https://en.wikipedia.org/wiki/Playing_cards_in_Unicode#Block
Playing_cards
  = "\uD83C" "\uDCCF" // U+1F0CF

// https://en.wikipedia.org/wiki/Supplemental_Arrows-B
Supplemental_ArrowsB
  = [\u2934-\u2935] // U+2934 - U+2935

// https://en.wikipedia.org/wiki/Fitzpatrick_scale#Unicode
Fitzpatrick_Modifier
  = "\uD83C" [\uDFFB-\uDFFF] // U+1F3FB – U+1F3FF
