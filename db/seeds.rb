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
    history: "One of the three scripts used in the Japanese language, are Chinese characters, which were first introduced to Japan in the 5th century via Korea. Kanji are ideograms, i.e. each character has its own meaning and corresponds to a word. Kanji are used for writing nouns, adjectives, adverbs and verbs"
) 

部 = Character.create(symbol: "部", onyomi_1: "ブ", onyomi_2: "" ,kunyomi_1: "", kunyomi_2: "", meaning: "section, bureau, dept, class, copy, part, portion, counter for copies of a newspaper or magazine", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1736",kanji: kanji)
法 = Character.create(symbol: "法", onyomi_1: "ホウ", onyomi_2: "ハッ" ,kunyomi_1: "のり", kunyomi_2: "", meaning: "method, law, rule, principle, model, system", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1817", kanji: kanji)
来 = Character.create(symbol: "来", onyomi_1: "ライ", onyomi_2: "タイ" ,kunyomi_1: "くる", kunyomi_2: "きたる", meaning: "come, due, next, cause, become", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=2003", kanji: kanji)
田 = Character.create(symbol: "田", onyomi_1: "デン", onyomi_2: "" ,kunyomi_1: "た", kunyomi_2: "", meaning: "rice field, rice paddy", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1461", kanji: kanji)
舞 = Character.create(symbol: "舞", onyomi_1: "ブ", onyomi_2: "" ,kunyomi_1: "まう", kunyomi_2: "まい", meaning: "dance, flit, circle, wheel", stroke_gif: "https://www.icampusj.net/u/sod/821e.gif", kanji: kanji)
表 = Character.create(symbol: "表", onyomi_1: "ヒョウ", onyomi_2: "" ,kunyomi_1: "おもて", kunyomi_2: "あらわす", meaning: "surface, table, chart, diagram", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1697", kanji: kanji)
連 = Character.create(symbol: "連", onyomi_1: "レン", onyomi_2: "" ,kunyomi_1: "つらなる", kunyomi_2: "つらねる", meaning: "take along, lead, join, connect, party, gang, clique", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=2095", kanji: kanji)
無 = Character.create(symbol: "無", onyomi_1: "ム", onyomi_2: "ブ" ,kunyomi_1: "ない", kunyomi_2: "", meaning: "nothingness, none, aint, nothing, nil, not", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1899", kanji: kanji)
高 = Character.create(symbol: "高", onyomi_1: "コウ", onyomi_2: "" ,kunyomi_1: "たかい", kunyomi_2: "たかめる", meaning: "tall, high, expensive", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=649", kanji: kanji)
名 = Character.create(symbol: "名", onyomi_1: "メイ", onyomi_2: "ミョウ" ,kunyomi_1: "な", kunyomi_2: "", meaning: "name, noted, distinguished, reputation", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1904", kanji: kanji)
長 = Character.create(symbol: "長", onyomi_1: "チョウ", onyomi_2: "" ,kunyomi_1: "ながい", kunyomi_2: "おさ", meaning: "long, leader", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1394", kanji: kanji)
家 = Character.create(symbol: "家", onyomi_1: "カ", onyomi_2: "ケ" ,kunyomi_1: "いえ", kunyomi_2: "や", meaning: "house, home", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=150", kanji: kanji)
稿 = Character.create(symbol: "稿", onyomi_1: "コウ", onyomi_2: "" ,kunyomi_1: "わら", kunyomi_2: "したがき", meaning: "draft, copy, manuscript, straw", stroke_gif: "https://www.icampusj.net/u/sod/7a3f.gif", kanji: kanji)
山 = Character.create(symbol: "山", onyomi_1: "サン", onyomi_2: "セン" ,kunyomi_1: "やま", kunyomi_2: "", meaning: "mountain", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=741", kanji: kanji)
月 = Character.create(symbol: "月", onyomi_1: "ゲツ", onyomi_2: "ガツ" ,kunyomi_1: "つき", kunyomi_2: "", meaning: "month, moon", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=513", kanji: kanji)
下 = Character.create(symbol: "下", onyomi_1: "カ", onyomi_2: "ゲ" ,kunyomi_1: "した", kunyomi_2: "さがる", meaning: "below, down, descend, give, low, inferior", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=139", kanji: kanji)
何 = Character.create(symbol: "何", onyomi_1: "カ", onyomi_2: "" ,kunyomi_1: "なに", kunyomi_2: "なん", meaning: "what", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=142", kanji: kanji)

女 = Character.create(symbol: "女", onyomi_1: "ジョ", onyomi_2: "ニョウ" ,kunyomi_1: "おんな", kunyomi_2: "め", meaning: "woman, female", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=945", kanji: kanji)
社 = Character.create(symbol: "社", onyomi_1: "シャ", onyomi_2: "" ,kunyomi_1: "やしろ", kunyomi_2: "", meaning: "company, firm, office, association, shrine", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=838", kanji: kanji)
話 = Character.create(symbol: "話", onyomi_1: "ワ", onyomi_2: "" ,kunyomi_1: "はなす", kunyomi_2: "はなし", meaning: "tale, talk", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=2114", kanji: kanji)
場 = Character.create(symbol: "場", onyomi_1: "ジョウ", onyomi_2: "チョウ" ,kunyomi_1: "ば", kunyomi_2: "", meaning: "location, place", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1009", kanji: kanji)
日 = Character.create(symbol: "日", onyomi_1: "ジツ", onyomi_2: "ニチ" ,kunyomi_1: "ひ", kunyomi_2: "", meaning: "day, sun, Japan", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1558", kanji: kanji)
事 = Character.create(symbol: "事", onyomi_1: "ジ", onyomi_2: "ズ" ,kunyomi_1: "こと", kunyomi_2: "つかえる", meaning: "matter, thing, fact, business, reason, possibly", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=796", kanji: kanji)
人 = Character.create(symbol: "人", onyomi_1: "ジン", onyomi_2: "ニン" ,kunyomi_1: "ひと", kunyomi_2: "", meaning: "person", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1062", kanji: kanji)
見 = Character.create(symbol: "見", onyomi_1: "ケン", onyomi_2: "" ,kunyomi_1: "みる", kunyomi_2: "みえる", meaning: "see, hopes, chances, idea, opinion, look at, visible", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=534", kanji: kanji)
本 = Character.create(symbol: "本", onyomi_1: "ホン", onyomi_2: "" ,kunyomi_1: "もと", kunyomi_2: "", meaning: "book, present, main, true, real, counter for long things", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1860", kanji: kanji)
子 = Character.create(symbol: "子", onyomi_1: "シ", onyomi_2: "ス" ,kunyomi_1: "こ", kunyomi_2: "ね", meaning: "child, first sign of Chinese zodiac, sign of the rat", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=764", kanji: kanji)
出 = Character.create(symbol: "出", onyomi_1: "シュツ", onyomi_2: "スイ" ,kunyomi_1: "でる", kunyomi_2: "だす", meaning: "exit, leave", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=913", kanji: kanji)
年 = Character.create(symbol: "年", onyomi_1: "ネン", onyomi_2: "" ,kunyomi_1: "とし", kunyomi_2: "", meaning: "year", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1570", kanji: kanji)
大 = Character.create(symbol: "大", onyomi_1: "ダイ", onyomi_2: "タイ" ,kunyomi_1: "おお-", kunyomi_2: "おおきい", meaning: "large, big", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1291", kanji: kanji)
言 = Character.create(symbol: "言", onyomi_1: "ゲン", onyomi_2: "ゴン" ,kunyomi_1: "いう", kunyomi_2: "こと", meaning: "say", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=552", kanji: kanji)
学 = Character.create(symbol: "学", onyomi_1: "ガク", onyomi_2: "" ,kunyomi_1: "まなぶ", kunyomi_2: "", meaning: "study, learning, science", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=225", kanji: kanji)
分 = Character.create(symbol: "分", onyomi_1: "フン", onyomi_2: "ブ" ,kunyomi_1: "わける", kunyomi_2: "わかれる", meaning: "part, minute of time, segment, share, degree, ones lot, duty, understand, know, rate, 1%, chances, shaku/10", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1754", kanji: kanji)
火 = Character.create(symbol: "火", onyomi_1: "カ", onyomi_2: "" ,kunyomi_1: "ひ", kunyomi_2: "ほ-", meaning: "fire", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=158", kanji: kanji)

方 = Character.create(symbol: "方", onyomi_1: "ホウ", onyomi_2: "" ,kunyomi_1: "かた", kunyomi_2: "", meaning: "direction, person, alternative", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1815", kanji: kanji)
小 = Character.create(symbol: "小", onyomi_1: "ショウ", onyomi_2: "" ,kunyomi_1: "ちいさい", kunyomi_2: "こ-", meaning: "little, small", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=960", kanji: kanji)
時 = Character.create(symbol: "時", onyomi_1: "ジ", onyomi_2: "" ,kunyomi_1: "とき", kunyomi_2: "", meaning: "time, hour", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=804", kanji: kanji)
行 = Character.create(symbol: "行", onyomi_1: "コウ", onyomi_2: "ギョウ" ,kunyomi_1: "いく", kunyomi_2: "ゆく", meaning: "going, journey", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=637", kanji: kanji)
気 = Character.create(symbol: "気", onyomi_1: "キ", onyomi_2: "ケ" ,kunyomi_1: "いき", kunyomi_2: "", meaning: "spirit, mind", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=319", kanji: kanji)
水 = Character.create(symbol: "水", onyomi_1: "スイ", onyomi_2: "" ,kunyomi_1: "みず", kunyomi_2: "みず-", meaning: "water", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1077", kanji: kanji)
思 = Character.create(symbol: "思", onyomi_1: "シ", onyomi_2: "" ,kunyomi_1: "おもう", kunyomi_2: "おもえらく", meaning: "think", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=768", kanji: kanji)
上 = Character.create(symbol: "上", onyomi_1: "ジョウ", onyomi_2: "シャン" ,kunyomi_1: "うえ", kunyomi_2: "うわ-", meaning: "above, up", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1002", kanji: kanji)
語 = Character.create(symbol: "語", onyomi_1: "ゴ", onyomi_2: "" ,kunyomi_1: "かたる", kunyomi_2: "かたらう", meaning: "word, speech, language", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=582", kanji: kanji)
土 = Character.create(symbol: "土", onyomi_1: "ド", onyomi_2: "ト" ,kunyomi_1: "つち", kunyomi_2: "", meaning: "soil, earth, ground, Turkey", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1473", kanji: kanji)
魚 = Character.create(symbol: "魚", onyomi_1: "ギョ", onyomi_2: "" ,kunyomi_1: "うお", kunyomi_2: "さかな", meaning: "fish", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=385", kanji: kanji)
生 = Character.create(symbol: "生", onyomi_1: "セイ", onyomi_2: "ショウ" ,kunyomi_1: "いきる", kunyomi_2: "いかす", meaning: "ife, genuine, birth", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1115", kanji: kanji)
文 = Character.create(symbol: "文", onyomi_1: "ブン", onyomi_2: "モン" ,kunyomi_1: "ふみ", kunyomi_2: "あや", meaning: "sentence, literature, style, art, decoration, figures, plan", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1762", kanji: kanji)
明 = Character.create(symbol: "明", onyomi_1: "メイ", onyomi_2: "ミョウ" ,kunyomi_1: "あかり", kunyomi_2: "あかるい", meaning: "bright, light", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1906", kanji: kanji)
国 = Character.create(symbol: "国", onyomi_1: "コク", onyomi_2: "" ,kunyomi_1: "くに", kunyomi_2: "", meaning: "country", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=658", kanji: kanji)
朝 = Character.create(symbol: "朝", onyomi_1: "チョウ", onyomi_2: "" ,kunyomi_1: "あさ", kunyomi_2: "", meaning: "morning, dynasty, regime, epoch, period, (North) Korea", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1383", kanji: kanji)
用 = Character.create(symbol: "用", onyomi_1: "ヨウ", onyomi_2: "" ,kunyomi_1: "もちいる", kunyomi_2: "", meaning: "utilize, business, service, use, employ", stroke_gif: "http://www.kanji-a-day.com/sodimg.php?type=a&id=1985", kanji: kanji)