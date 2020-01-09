# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
Kanji.destroy_all

kanji = Kanji.create(
    onyomi: "On-yomi is mostly used for words that originate in Chinese, which often use 2 or more characters. Since it's used for borrowed word, it used the Katakana alphabet.", 
    kunyomi: "Kun-Yomi is used for words that only use one character and example of this is the kunyomi for the character for person. Kun-yomi is used for native Japanese words including adjectives and verbs. Kun-yomi uses the hiragana alphabet.", 
    history: " one of the three scripts used in the Japanese language, are Chinese characters, which were first introduced to Japan in the 5th century via Korea. Kanji are ideograms, i.e. each character has its own meaning and corresponds to a word. Kanji are used for writing nouns, adjectives, adverbs and verbs"
) 

部 = Character.create(symbol: "部", onyomi_1: "ブ", onyomi_2: "" ,kunyomi_1: "", kunyomi_2: "", meaning: "section, bureau, dept, class, copy, part, portion, counter for copies of a newspaper or magazine", kanji: kanji)
法 = Character.create(symbol: "法", onyomi_1: "ホウ", onyomi_2: "ハッ" ,kunyomi_1: "のり", kunyomi_2: "", meaning: "method, law, rule, principle, model, system", kanji: kanji)
来 = Character.create(symbol: "来", onyomi_1: "ライ", onyomi_2: "タイ" ,kunyomi_1: "くる", kunyomi_2: "きたる", meaning: "come, due, next, cause, become", kanji: kanji)
田 = Character.create(symbol: "田", onyomi_1: "デン", onyomi_2: "" ,kunyomi_1: "た", kunyomi_2: "", meaning: "rice field, rice paddy", kanji: kanji)
舞 = Character.create(symbol: "舞", onyomi_1: "ブ", onyomi_2: "" ,kunyomi_1: "まう", kunyomi_2: "まい", meaning: "dance, flit, circle, wheel", kanji: kanji)
表 = Character.create(symbol: "表", onyomi_1: "ヒョウ", onyomi_2: "" ,kunyomi_1: "おもて", kunyomi_2: "あらわす", meaning: "surface, table, chart, diagram", kanji: kanji)
連 = Character.create(symbol: "連", onyomi_1: "レン", onyomi_2: "" ,kunyomi_1: "つらなる", kunyomi_2: "つらねる", meaning: "take along, lead, join, connect, party, gang, clique", kanji: kanji)
無 = Character.create(symbol: "無", onyomi_1: "ム", onyomi_2: "ブ" ,kunyomi_1: "ない", kunyomi_2: "", meaning: "nothingness, none, aint, nothing, nil, not", kanji: kanji)
高 = Character.create(symbol: "高", onyomi_1: "コウ", onyomi_2: "" ,kunyomi_1: "たかい", kunyomi_2: "たかめる", meaning: "tall, high, expensive", kanji: kanji)
名 = Character.create(symbol: "名", onyomi_1: "メイ", onyomi_2: "ミョウ" ,kunyomi_1: "な", kunyomi_2: "", meaning: "name, noted, distinguished, reputation", kanji: kanji)
長 = Character.create(symbol: "長", onyomi_1: "チョウ", onyomi_2: "" ,kunyomi_1: "ながい", kunyomi_2: "おさ", meaning: "long, leader", kanji: kanji)
家 = Character.create(symbol: "家", onyomi_1: "カ", onyomi_2: "ケ" ,kunyomi_1: "いえ", kunyomi_2: "や", meaning: "house, home", kanji: kanji)
稿 = Character.create(symbol: "稿", onyomi_1: "コウ", onyomi_2: "" ,kunyomi_1: "わら", kunyomi_2: "したがき", meaning: "draft, copy, manuscript, straw", kanji: kanji)
山 = Character.create(symbol: "山", onyomi_1: "サン", onyomi_2: "セン" ,kunyomi_1: "やま", kunyomi_2: "", meaning: "mountain", kanji: kanji)
月 = Character.create(symbol: "月", onyomi_1: "ゲツ", onyomi_2: "ガツ" ,kunyomi_1: "つき", kunyomi_2: "", meaning: "month, moon", kanji: kanji)
下 = Character.create(symbol: "下", onyomi_1: "カ", onyomi_2: "ゲ" ,kunyomi_1: "した", kunyomi_2: "さがる", meaning: "below, down, descend, give, low, inferior", kanji: kanji)
何 = Character.create(symbol: "何", onyomi_1: "カ", onyomi_2: "" ,kunyomi_1: "なに", kunyomi_2: "なん", meaning: "what", kanji: kanji)