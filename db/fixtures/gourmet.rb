Gourmet.find_or_create_by!(
  name: 'ジンギスカン',
  description: '羊肉を使った郷土料理のジンギスカンは、酪農が盛んな北海道ならではのご当地メニュー。醤油ベースのタレに漬け込んだ羊肉を、野菜類と一緒に専用のジンギスカン鍋で焼いて味わいます。',
  prefecture_id: 1
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon1.jpeg')), filename: 'icon1.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'スープカレー',
  description: '札幌を中心に専門店が多数存在する名物のスープカレー。スパイスのきいたサラサラとしたカレーが特徴で、店ごとにダシは鶏ガラ、海老、和風など多種多様。さらに、チキンや素揚げ野菜など具材もゴロゴロと大きく、食べ応え満点です。',
  prefecture_id: 1
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon2.jpeg')), filename: 'icon2.jpeg')
end

Gourmet.find_or_create_by!(
  name: '札幌ラーメン',
  description: '屋台の味が源流と言われる札幌ラーメン。コクのある味噌味のスープと黄色い中太ちぢれ麺、さらにトッピングにバターとコーンを浮かべてあるのが基本スタイルです。',
  prefecture_id: 1
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon3.jpeg')), filename: 'icon3.jpeg')
end

Gourmet.find_or_create_by!(
  name: '海鮮丼',
  description: '海の幸をごはんにたっぷりのせて味わう海鮮丼は、魚介類の宝庫でもある北海道を訪れたなら外せない逸品です。中でも市場や朝市で提供される海鮮丼は刺身類の鮮度が抜群でボリュームもあり、お手ごろ価格と評判です。',
  prefecture_id: 1
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon4.jpeg')), filename: 'icon4.jpeg')
end

Gourmet.find_or_create_by!(
  name: '十和田バラ焼き',
  description: '県南部の内陸に位置する十和田市の名物。タレで下味を付けた牛バラ肉を、たっぷりのタマネギと一緒に鉄板で焼き上げるプルコギスタイルの料理です。',
  prefecture_id: 2
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon5.jpeg')), filename: 'icon5.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'せんべい汁',
  description: '八戸市付近の郷土料理で、B-1グランプリが誕生するきっかけとなったご当地グルメ。肉や魚、野菜、キノコなどでだしを取った汁に、小麦粉でできた南部せんべいを割り入れて煮込みます。',
  prefecture_id: 2
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon6.jpeg')), filename: 'icon6.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'つゆ焼きそば',
  description: '黒石市のつゆ焼きそばは、太い平麺を甘辛いソースで味付けした焼きそばに、そばつゆもしくはラーメンのスープをかけたものです。基本のトッピングは長ネギと天かすですが、店によって個性を出しているのが特徴です。',
  prefecture_id: 2
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon7.jpeg')), filename: 'icon7.jpeg')
end

Gourmet.find_or_create_by!(
  name: '大間マグロ',
  description: '最高級として全国に名を馳せる大間マグロは、下北半島の先端にある大間港で水揚げされる天然マグロのブランド。都内で食べたらとんでもない価格ですが、現地なら手を出せる値段で食べられます。',
  prefecture_id: 2
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon8.jpeg')), filename: 'icon8.jpeg')
end

Gourmet.find_or_create_by!(
  name: '盛岡冷麺',
  description: 'コシの強さとつるっとしたのど越しの良さが持ち味の盛岡冷麺。この麺に、牛骨や鶏ガラでダシをとったコクのある冷たいスープ、キムチも加わって三位一体のハーモニーを奏でます。',
  prefecture_id: 3
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon9.jpeg')), filename: 'icon9.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'わんこそば',
  description: '一口に小分けされた温かいそばが「わんこ（お椀）」で提供される郷土料理です。そばはあらかじめ麵つゆにくぐらせてあり食べやすいのが特徴。10～15杯ほどで一般的なそばの1人前になります。',
  prefecture_id: 3
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon10.jpeg')), filename: 'icon10.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'じゃじゃ麺',
  description: 'コシのある平打ち麺の上に、肉味噌や千切りキュウリ、ネギがのった盛岡じゃじゃ麺。好みで酢やラー油、ショウガ、ニンニクなどを加え、全体をよく混ぜて味わいます。〆には、残った味噌に卵と茹で汁をプラスし、スープとしていただくこともできます。',
  prefecture_id: 3
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon11.jpeg')), filename: 'icon11.jpeg')
end

Gourmet.find_or_create_by!(
  name: '前沢牛',
  description: '県南部の内陸に位置する奥州市前沢で肥育される、黒毛和種のブランド牛肉。地元産の良質な稲わらを餌に、冷涼な環境で伸び伸びと育つ前沢牛は、肉質の良さと上質できめ細やかな霜降りが特徴です。',
  prefecture_id: 3
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon12.jpeg')), filename: 'icon12.jpeg')
end

Gourmet.find_or_create_by!(
  name: '牛タン',
  description: '仙台グルメを代表する牛タン。麦飯とテールスープがセットの牛タン焼き定食が定番です。厚切りですがとてもやわらかな牛タンは噛めば噛むほどうま味があふれ出てきます。',
  prefecture_id: 4
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon13.jpeg')), filename: 'icon13.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ずんだ',
  description: 'ずんだとは、茹でた枝豆をすり潰して砂糖で甘く味付けした餡のこと。この餡をつきたてのお餅にからめた郷土料理がずんだ餅です。近年は、ずんだシェイクやずんだパフェなど、さまざまなずんだスイーツも登場して人気を集めています。',
  prefecture_id: 4
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon14.jpeg')), filename: 'icon14.jpeg')
end

Gourmet.find_or_create_by!(
  name: '笹かまぼこ',
  description: '明治期に仙台湾でたくさんとれる魚を加工し、保存するために誕生したと言われる笹かまぼこ。現在はスケトウダラなど白身魚のすり身が材料に使われています。',
  prefecture_id: 4
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon15.jpeg')), filename: 'icon15.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'はらこ飯',
  description: '亘理町の名物のはらこ飯は、鮭の煮汁で炊いたご飯の上に、鮭の身とイクラをたっぷりのせた宮城のご当地グルメです。仙台藩主・伊達政宗がこの地を視察に訪れた際、領民が献上したことでも有名です。',
  prefecture_id: 4
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon16.jpeg')), filename: 'icon16.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'きりたんぽ',
  description: '細長い形状が特徴のきりたんぽは、炊き上がったご飯を軽くすりつぶし、串を包むように握りつけた食べものです。鍋の具にする「きりたんぽ鍋」が有名ですが味噌焼きにしてもおいしく、いろいろなアレンジが楽しめます。',
  prefecture_id: 5
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon17.jpeg')), filename: 'icon17.jpeg')
end

Gourmet.find_or_create_by!(
  name: '比内地鶏',
  description: '比内地鶏は、秋田県が誇るブランド鶏です。良質な赤みが多くプリッとした歯ごたえで、一般的な鶏肉に比べて脂肪が少ないためヘルシー志向の方にも大変人気があります。',
  prefecture_id: 5
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon18.jpeg')), filename: 'icon18.jpeg')
end

Gourmet.find_or_create_by!(
  name: '横手焼きそば',
  description: '横手市の名物として知られ、ご当地グルメのイベント「B-1グランプリ」で優勝経験もある横手やきそば。甘口のソースで味付けし、トッピングに半熟の目玉焼きと福神漬けをのせて完成。',
  prefecture_id: 5
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon19.jpeg')), filename: 'icon19.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ハタハタ',
  description: '県の魚にも指定されているほど、秋田の人々の生活に根付くハタハタ。身はあっさりと淡泊で、塩焼きはもちろん、魚醤を使った「しょっつる鍋」や、麹や塩などで漬けた「ハタハタ寿司」などが有名です。',
  prefecture_id: 5
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon20.jpeg')), filename: 'icon20.jpeg')
end

Gourmet.find_or_create_by!(
  name: '米沢牛',
  description: '山形県の特産品であり日本三大和牛のひとつに数えられることもある「米沢牛」。赤身と脂身のバランスが良く、柔らかくジューシーな肉質の中に旨味が凝縮されています。',
  prefecture_id: 6
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon21.jpeg')), filename: 'icon21.jpeg')
end

Gourmet.find_or_create_by!(
  name: '芋煮',
  description: '芋煮」は、里芋やこんにゃく、ねぎ、きのこ類、季節の野菜などを主な具材とした鍋料理です。同じ山形県でも、内陸部の芋煮は主に牛肉で醤油味、日本海側の庄内地域の芋煮は豚肉で味噌味と材料も味付けも異なります。',
  prefecture_id: 6
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon22.jpeg')), filename: 'icon22.jpeg')
end

Gourmet.find_or_create_by!(
  name: '玉こんにゃく',
  description: 'こんにゃくを丸くして醤油出汁に浸け込んだ、シンプルですが絶品のグルメです。醤油出汁が染みわたる玉こんにゃく、一口食べると独特の食感と共に口内に染み込んだ出汁が一斉に広がります。',
  prefecture_id: 6
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon23.jpeg')), filename: 'icon23.jpeg')
end

Gourmet.find_or_create_by!(
  name: '米沢ラーメン',
  description: '細打手もみちぢれ麺とあっさりした醤油味のスープが特徴。出汁は鶏ガラ、野菜、煮干しを使う店が多く、毎日食べても飽きのこないあっさりとして後味のよいスープです。',
  prefecture_id: 6
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon24.jpeg')), filename: 'icon24.jpeg')
end

Gourmet.find_or_create_by!(
  name: '喜多方ラーメン',
  description: '大正末期頃に屋台で売られていた支那そばがルーツとされる喜多方ラーメン。醤油味ベースのスープと、「平打ち熟成多加水麺」と呼ばれる通常よりも水分を多く含んだ麺が特徴です。',
  prefecture_id: 7
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon25.jpeg')), filename: 'icon25.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'なみえ焼きそば',
  description: 'なみえ焼きそばは、双葉郡浪江町発のご当地グルメ。全国的にその名が知られる、福島県を代表するB級グルメです。うどんを思わせる極太麺と、もやしや豚肉などのシンプルな具の組み合わせは、絶妙のバランスです。',
  prefecture_id: 7
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon26.jpeg')), filename: 'icon26.jpeg')
end

Gourmet.find_or_create_by!(
  name: '円盤餃子',
  description: 'フライパンで焼き上げられた姿のまま、円盤のように餃子が盛り付けられて登場します。キャベツや白菜などの野菜が多く使われており、中はジューシーで、外はサクッと焼き上がっているのが特徴です。',
  prefecture_id: 7
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon27.jpeg')), filename: 'icon27.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ソースカツ丼',
  description: '会津でカツ丼と言えば、ほかほかのご飯の上に千切りキャベツを敷き、トンカツにソースをからめてのせたソースカツ丼が定番。カツが大きめでボリュームがあり、各店オリジナルのソースやキャベツとのバランスも絶妙です。',
  prefecture_id: 7
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon28.jpeg')), filename: 'icon28.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'あんこう鍋',
  description: 'あんこうの地として有名なのが、大洗。肝を使った味噌仕立てのだしでなめらかな味わいが特徴の「大洗あんこう鍋」をいただけます。白身はくせがなく淡白、皮はぷりっとしていてアン肝はこっくり濃厚です。',
  prefecture_id: 8
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon29.jpeg')), filename: 'icon29.jpeg')
end

Gourmet.find_or_create_by!(
  name: '常陸牛',
  description: '常陸牛は、茨城を代表する黒毛和牛の最高級ブランドです。風味豊かで、特に赤身が美味しくジューシーでやわらかく、枝肉重量は全国でもトップクラスで大きく、肉質と脂肪交雑（サシ）が全国上位という特徴があります。',
  prefecture_id: 8
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon30.jpeg')), filename: 'icon30.jpeg')
end

Gourmet.find_or_create_by!(
  name: '水戸納豆',
  description: '茨城のご当地グルメと言えば、外せないのが「納豆」。納豆の生産が盛んな水戸では、納豆パフェなどの変わり種もあり、多種多様な納豆メニューが楽しめます。',
  prefecture_id: 8
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon31.jpeg')), filename: 'icon31.jpeg')
end

Gourmet.find_or_create_by!(
  name: '常陸秋そば',
  description: '茨城県の名物となっている「常陸秋そば」は、1978年に誕生した蕎麦ブランド。薫り高い豊潤な味わいは全国的にも高く評価されており、「玄そばの最高峰」と呼ばれています。',
  prefecture_id: 8
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon32.jpeg')), filename: 'icon32.jpeg')
end

Gourmet.find_or_create_by!(
  name: '宇都宮餃子',
  description: '宇都宮餃子は、栃木県の代表的なご当地グルメといっても過言ではありません。その最大の特徴は、あんに使われる野菜の量が多いこと。特に白菜がふんだんに入っていて、さっぱりしているので何個でも食べられます。',
  prefecture_id: 9
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon33.jpeg')), filename: 'icon33.jpeg')
end

Gourmet.find_or_create_by!(
  name: '佐野ラーメン',
  description: '「青竹打ち」という製法を用いて打たれた麺が使われている、あっさりした鶏ダシラーメンです。うどんのような食感が特徴で、一度食べるとそののどごしの良さにやみつきになってしまいます。',
  prefecture_id: 9
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon34.jpeg')), filename: 'icon34.jpeg')
end

Gourmet.find_or_create_by!(
  name: '宇都宮焼きそば',
  description: '栃木県のB級グルメとして人気になった宇都宮焼きそば。ソースを自分好みの量だけ追加でき、具はキャベツやイカ、お肉のほかに、宇都宮焼きそばではハム・目玉焼きをのせるのが珍しいところ。',
  prefecture_id: 9
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon35.jpeg')), filename: 'icon35.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'いもフライ',
  description: 'じゃがいもに衣をつけてフライにしたもので、串カツのようにソースにしっかり浸して食べるのが一般的です。ソースとじゃがいもは意外な組み合わせかもしれませんが、実はコンビネーション抜群です。',
  prefecture_id: 9
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon36.jpeg')), filename: 'icon36.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ひもかわうどん',
  description: '幅広い麺が特徴の群馬県桐生市の名物ひもかわうどん。厚みは１ミリ程度と薄く、もちもちとした触感とつるんとしたのど越しも特徴のひとつです。',
  prefecture_id: 10
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon37.jpeg')), filename: 'icon37.jpeg')
end

Gourmet.find_or_create_by!(
  name: '焼きまんじゅう',
  description: '基本的には、餡の入っていない蒸したまんじゅうを串に刺し、味噌だれを塗って両面をこんがりと焼いたものです。外側がカリッと焼き上がり、中はふんわりとした食感です。',
  prefecture_id: 10
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon38.jpeg')), filename: 'icon38.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'おっきりこみ',
  description: '熱の通りやすい幅広の平打ち麺と一緒に季節の野菜や根菜を煮込んでいただく郷土料理です。',
  prefecture_id: 10
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon39.jpeg')), filename: 'icon39.jpeg')
end

Gourmet.find_or_create_by!(
  name: '水沢うどん',
  description: '日本三大うどんのひとつでもあるのが、群馬の水沢うどんです。数百年の歴史を持ち、太くコシの強い、つるっとしたのどごしが特徴です。',
  prefecture_id: 10
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon40.jpeg')), filename: 'icon40.jpeg')
end

Gourmet.find_or_create_by!(
  name: '豆腐らーめん',
  description: 'さいたま市岩槻区発祥のラーメン。醤油味のスープに、豆腐と挽肉の餡かけが麺のうえにのっており、麻婆ラーメンとは似て異なり、どちらかといえばさっぱりとした味です。',
  prefecture_id: 11
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon41.jpeg')), filename: 'icon41.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'すったて',
  description: '埼玉が誇るローカルフードで夏の定番メニューです。ゴマや大葉、ミョウガなどをすりつぶして味噌と混ぜ、だし汁で割ってうどんをつけながら食べる料理。「すりたて」が訛って「すったて」になったとされています。',
  prefecture_id: 11
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon42.jpeg')), filename: 'icon42.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'くるみそば',
  description: '秩父名物のひとつである「くるみそば」は、その名の通りくるみの実が入ったくるみだれに蕎麦を入れていただきます。まろやかなくるみの風味が味わえ、さらっと食べられるのが特徴です。',
  prefecture_id: 11
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon43.jpeg')), filename: 'icon43.jpeg')
end

Gourmet.find_or_create_by!(
  name: '煮ぼうとう',
  description: 'およそ2.5cmの幅広の麺とたっぷりの野菜を一緒に煮込んだ深谷の郷土料理です。生麺から煮込んでいるため程よいとろみがついており、また醤油味なので誰でも食べやすいのも魅力です。',
  prefecture_id: 11
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon44.jpeg')), filename: 'icon44.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'なめろう',
  description: '千葉県の房総半島に伝わる郷土料理です。皿をなめるほどおいしいということが名前の由来とされています。主に鯵（あじ）に味噌・ネギ・ショウガのみじん切りなどを混ぜ、粘りがでるまでたたいた料理です。',
  prefecture_id: 12
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon45.jpeg')), filename: 'icon45.jpeg')
end

Gourmet.find_or_create_by!(
  name: '勝浦タンタンメン',
  description: '勝浦市のご当地ラーメン「勝浦タンタンメン」。一般的な担々麺はごま風味ですが、勝浦のはラー油、玉ねぎ、豚ひき肉を使っています。',
  prefecture_id: 12
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon46.jpeg')), filename: 'icon46.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ホワイト餃子',
  description: 'ホワイト餃子の特徴は、なんといっても肉まんかと思うほどの厚い皮です。皮の外側はパリパリで、内側はもちもちジューシーな餡の旨味が口いっぱいに広がります。',
  prefecture_id: 12
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon47.jpeg')), filename: 'icon47.jpeg')
end

Gourmet.find_or_create_by!(
  name: '竹岡ラーメン',
  description: '竹岡ラーメンは、チャーシューの煮汁である醤油ダレにお湯を加えるだけのシンプルな作り方でありながら、肉の旨味がしっかりきいたまろやかなスープが特徴のラーメンです。',
  prefecture_id: 12
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon48.jpeg')), filename: 'icon48.jpeg')
end

Gourmet.find_or_create_by!(
  name: '江戸前寿司',
  description: '江戸前寿司は、江戸前（東京湾）で漁れた魚介類を材料とした握りが中心の寿司。塩や酢で〆る、蒸す、煮る、タレを塗る、漬けるといったさまざまな工夫（仕事）がネタに施されているのが特徴です。',
  prefecture_id: 13
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon49.jpeg')), filename: 'icon49.jpeg')
end

Gourmet.find_or_create_by!(
  name: '深川めし',
  description: 'あさりとネギなどの野菜を煮込んだ汁物をごはんにかけたもので、深川の漁師たちが仕事の合間に食べる賄いがルーツとされています。あさりの旨味と風味しみ込んだご飯はぜひ食べたい一品です。',
  prefecture_id: 13
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon50.jpeg')), filename: 'icon50.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'もんじゃ焼き',
  description: 'もんじゃ焼きは、ゆるく水溶きした小麦粉を鉄板で調理して食べる東京発祥のグルメです。月島と浅草にもんじゃ焼店が集中しています。',
  prefecture_id: 13
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon51.jpeg')), filename: 'icon51.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'どぜう鍋',
  description: '江戸時代から庶民の味として愛されてきたどぜう鍋。鍋にギュウギュウに敷き詰められたどじょうに、大盛りに乗せられたネギなど、鍋料理というにはインパクトの強い見た目が特徴的です。',
  prefecture_id: 13
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon52.jpeg')), filename: 'icon52.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'サンマーメン',
  description: 'サンマーメンとは、もやしなどの野菜と肉を炒めた餡かけが乗ったラーメンのこと。シャキシャキとした野菜と餡かけのとろみのコンビネーションが絶品です。',
  prefecture_id: 14
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon53.jpeg')), filename: 'icon53.jpeg')
end

Gourmet.find_or_create_by!(
  name: '横浜家系ラーメン',
  description: '特徴は濃厚な豚骨醤油のスープ。豚骨、鶏ガラ、野菜などのダシの旨味が溶け出した力強いスープと麺が絶妙に絡みます。',
  prefecture_id: 14
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon54.jpeg')), filename: 'icon54.jpeg')
end

Gourmet.find_or_create_by!(
  name: '牛鍋',
  description: '横浜港が開港し西洋の肉食文化が流入したことがきっかけの牛鍋。牛鍋は鉄鍋に割り下を入れて、そこへ肉や野菜を入れ煮て食します。すきやきのように「焼く」ことはしません。',
  prefecture_id: 14
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon55.jpeg')), filename: 'icon55.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'しらす',
  description: '相模湾に面した湘南海岸は、しらすの水揚量が全国屈指を誇る大産地。そんな土地柄だからこそ味わえる絶品食材が「生しらす丼」であり、こちら湘南海岸エリアの名物ご当地グルメとなっています。',
  prefecture_id: 14
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon56.jpeg')), filename: 'icon56.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'へぎそば',
  description: '“フノリ”という海藻をつなぎに使っていることで、独特の弾力とツルツルとしたのど越しが特徴。木を剥いで作った「へぎ」という器に3～4人前が盛り付けられているのが定番です。',
  prefecture_id: 15
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon57.jpeg')), filename: 'icon57.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'イタリアン',
  description: '新潟県のB級グルメと言えば、中華麺にトマトソースをかけたイタリアン。今ではホワイトソースなど、ソースのバリエーションも増えています。',
  prefecture_id: 15
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon58.jpeg')), filename: 'icon58.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'タレかつ丼',
  description: '新潟県のカツ丼は甘い醤油だれにくぐらせてご飯に乗せたスタイル。新潟県のカツ丼はこれがスタンダードで、卵でとじません。',
  prefecture_id: 15
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon59.jpeg')), filename: 'icon59.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'のどぐろ',
  description: '白身のトロと呼ばれる日本海の高級魚のどぐろ。新潟県の寿司屋や日本料理店では、お刺身やお寿司はもちろん、塩焼きなどでも親しまれている人気食材です。',
  prefecture_id: 15
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon60.jpeg')), filename: 'icon60.jpeg')
end

Gourmet.find_or_create_by!(
  name: '富山ブラックラーメン',
  description: '富山ブラックラーメンはその名の通り、スープが真っ黒のラーメンです。スープを一口飲むと、意外にも出汁のきいた醤油ベースの深い味わい、そして中太麺が程良く絡み合う逸品です',
  prefecture_id: 16
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon61.jpeg')), filename: 'icon61.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ホタルイカ',
  description: 'ホタルイカは、富山の春の風物詩。新鮮なホタルイカのお刺身やボイル、酢味噌あえ、唐揚げ、天ぷら、沖漬けなど、さまざまな料理が楽しめます。',
  prefecture_id: 16
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon62.jpeg')), filename: 'icon62.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ます寿司',
  description: '木製のわっぱに笹を敷いて酢飯を詰め、その上に味つけをしたマスの切り身をすき間なく敷き詰めた、見た目も色鮮やかな郷土料理です。',
  prefecture_id: 16
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon63.jpeg')), filename: 'icon63.jpeg')
end

Gourmet.find_or_create_by!(
  name: '氷見うどん',
  description: '氷見うどんとは、現在では珍しい、機会を一切使用せず「手延べ製造」で製造される、富山県を代表するうどんです。手作業で製造されるうどんは、喉越しが良く、歯ごたえもちょうど良い代物です。',
  prefecture_id: 16
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon64.jpeg')), filename: 'icon64.jpeg')
end

Gourmet.find_or_create_by!(
  name: '能登丼',
  description: '旬の魚介やブランド肉など奥能登産の食材をふんだんに使ったご当地丼。「能登牛」のヒレステーキをのせた「能登牛ステーキ丼」、港からの直送魚介を使った「能登朝市丼」など、多彩な丼が味わえます。',
  prefecture_id: 17
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon65.jpeg')), filename: 'icon65.jpeg')
end

Gourmet.find_or_create_by!(
  name: '金沢カレー',
  description: '黒くてドロっとした濃厚なルーが特徴のカレーです。付け合わせにはキャベツ、ルーの上にはソースがかかったサクサクのカツ。他のカレーにはないちょっと変わった組み合わせが癖になります。',
  prefecture_id: 17
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon66.jpeg')), filename: 'icon66.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ハントンライス',
  description: '金沢市発祥のご当地グルメ。オムライスの上に、白身魚のフライをのせてケチャップとタルタルソースをかけたもので、白身魚のフライだけではなく、エビフライやトンカツを乗せているお店もあります。',
  prefecture_id: 17
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon67.jpeg')), filename: 'icon67.jpeg')
end

Gourmet.find_or_create_by!(
  name: '金沢おでん',
  description: 'おでん屋の数が多い地域である石川県。旨みが凝縮されたつゆには透明感があり、素材のおいしさを活かす上品な味わい。かに面やバイ貝、赤巻など、金沢おでんならではの種が多くあります。',
  prefecture_id: 17
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon68.jpeg')), filename: 'icon68.jpeg')
end

Gourmet.find_or_create_by!(
  name: '越前がに',
  description: '福井県屈指の冬の絶品グルメ。刺身・茹で・焼き・しゃぶしゃぶ・甲羅焼き・かに飯など様々な食べ方を楽しむことができ、解禁直後はあっさりとした味わい、旬の後半は脂肪分の多いこってりとした味わいが楽しめます。',
  prefecture_id: 18
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon69.jpeg')), filename: 'icon69.jpeg')
end

Gourmet.find_or_create_by!(
  name: '越前そば',
  description: 'おろした辛味大根、ネギ、鰹節がたっぷりと乗っており、直接出汁をかけて食べるのが一般的。店によっては、つけ汁に大根おろしを入れて食べるスタイルもあります。麺はやや太めで黒っぽく、コシが強いのが特徴です',
  prefecture_id: 18
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon70.jpeg')), filename: 'icon70.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ソースカツ丼',
  description: '福井を代表するグルメと言えるソースカツ丼。卵でとじたトンカツではなく、濃い目のソースにたっぷりと浸したトンカツを乗せるのが福井県の独自スタイルです。',
  prefecture_id: 18
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon71.jpeg')), filename: 'icon71.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ボルガライス',
  description: 'オムライスとトンカツを合体させた、他では見ることのでいないB級ご当地グルメです。福井県のレストランでは必ず見ることができ、地元民から愛され続けているメニューです。',
  prefecture_id: 18
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon72.jpeg')), filename: 'icon72.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ほうとう',
  description: '小麦粉から作った幅1センチほどの太い麺が特徴の料理で、味噌と一緒に煮込みます。カボチャやニンジンなど野菜たっぷりで、体に優しい料理。最近では鶏肉や油揚げなども使われていて、食べ応えも十分です。',
  prefecture_id: 19
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon73.jpeg')), filename: 'icon73.jpeg')
end

Gourmet.find_or_create_by!(
  name: '吉田うどん',
  description: '富士吉田市を代表するソウルフード。特徴はコシの強い太麺で醤油と味噌を合わせて作ったダシとの相性も抜群です。トッピングは馬肉やキャベツを使うのが定番で、山梨でしか食べられない味です。',
  prefecture_id: 19
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon74.jpeg')), filename: 'icon74.jpeg')
end

Gourmet.find_or_create_by!(
  name: '甲府鳥もつ煮',
  description: '甲府市内の蕎麦屋さんで考案され、今は山梨県を代表するB級グルメ。鳥の砂肝やハツやレバーなどを醤油だれで甘辛く照り煮したグルメで、濃厚な味が特徴。お酒のつまみや、ご飯に乗せて鳥もつ丼として食べるのもおすすめです。',
  prefecture_id: 19
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon75.jpeg')), filename: 'icon75.jpeg')
end

Gourmet.find_or_create_by!(
  name: '甲州ワインビーフ',
  description: '山梨県の恵まれた自然の中で、ワインの搾り粕を飼料に加え育てられたブランド牛「甲州ワインビーフ」。通常の飼料で育つ牛よりも肉の酸化が進みにくく、柔らかい赤身と脂身とのバランスが取れた上品な味わいになります。',
  prefecture_id: 19
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon76.jpeg')), filename: 'icon76.jpeg')
end

Gourmet.find_or_create_by!(
  name: '信州そば',
  description: '長野は寒暖差が激しいことや澄んだ山水が美味しいことから、蕎麦の栽培には絶好の環境と言われています。至るところに名店があり、地域によって色や風味が異なり、様々な味わいを楽しめます。',
  prefecture_id: 20
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon77.jpeg')), filename: 'icon77.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'おやき',
  description: '長野県を代表する郷土料理で、小麦粉やそば粉で作ったモチモチの皮に、バリエーション豊富な具材を包んだ饅頭のことです。食事系だけでなく小豆やクルミ餡、りんごペーストといった甘いスイーツ系も用意されています。',
  prefecture_id: 20
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon78.jpeg')), filename: 'icon78.jpeg')
end

Gourmet.find_or_create_by!(
  name: '信州サーモン',
  description: '高い評価を得ている良質な養殖品種。「トロリとろける美味しさ」が特徴で、肉厚な身に風味豊かな旨味が凝縮されています。後味がさっぱりとしているので、いくらでも食べられてしまう美味しさです。',
  prefecture_id: 20
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon79.jpeg')), filename: 'icon79.jpeg')
end

Gourmet.find_or_create_by!(
  name: '山賊焼き',
  description: '鶏肉をニンニクが効いた醤油タレに漬け込み、片栗粉をつけてカラリと揚げたもの。松本市や塩尻市の名物料理です。モモ肉を1枚丸ごと漬けて揚げる豪快な料理で外はカリカリ、中はジューシーな味わいです。',
  prefecture_id: 20
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon80.jpeg')), filename: 'icon80.jpeg')
end

Gourmet.find_or_create_by!(
  name: '飛騨牛',
  description: '飛騨牛は全国の和牛の質を争う会でも日本一を取ったことのある、名実ともにトップクラスのお肉。綺麗にさしが入った見た目が特徴的で美しいです。お米との相性抜群な「飛騨牛にぎり」がおすすめ。',
  prefecture_id: 21
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon81.jpeg')), filename: 'icon81.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鶏ちゃん',
  description: '南飛騨地方の郷土料理で鶏肉を使用した料理です。しょうゆや味噌ベースのタレに漬け込んだ鶏肉をキャベツなどの野菜と一緒に焼いて食べる、シンプルだけど癖になる一品です。',
  prefecture_id: 21
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon82.jpeg')), filename: 'icon82.jpeg')
end

Gourmet.find_or_create_by!(
  name: '高山ラーメン',
  description: '普通のラーメンと比べて量が少なめなのが特徴。鶏ガラを中心とした醤油ベースのスープに、麺は平打ちで細く縮れ麺で、スープがよくからむようになっています。',
  prefecture_id: 21
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon83.jpeg')), filename: 'icon83.jpeg')
end

Gourmet.find_or_create_by!(
  name: '朴葉味噌',
  description: '飛騨・高山地方の郷土料理で、自家製の味噌をベースに、ネギなどの薬味、椎茸などの山菜類をからめたものを朴の葉の上に載せて焼く料理です。香ばしい味噌の香りが口に広がり、思わずご飯が進む一品です。',
  prefecture_id: 21
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon84.jpeg')), filename: 'icon84.jpeg')
end

Gourmet.find_or_create_by!(
  name: '静岡おでん',
  description: '静岡おでんはだし汁が真っ黒なのが特徴。提供される際にはだし汁が注がれず、魚粉や青のりが混ざった だし粉をふりかけて食べます。味は濃くなく普段食べているおでんよりも深みのある味わいです。',
  prefecture_id: 22
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon85.jpeg')), filename: 'icon85.jpeg')
end

Gourmet.find_or_create_by!(
  name: '富士宮焼きそば',
  description: '富士宮焼きそばとは、富士宮市のご当地グルメです。もっちり麺としっかりした出汁、そしてあっさりしたソース味が特徴で、B級グルメとして全国的に有名になりました。',
  prefecture_id: 22
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon86.jpeg')), filename: 'icon86.jpeg')
end

Gourmet.find_or_create_by!(
  name: '浜松餃子',
  description: '浜松市が発祥の浜松餃子は、円形に並べて焼き、中央にもやしを添えるのが大きな特徴です。キャベツをたっぷり使い、豚肉のコクをプラスした浜松餃子は、何個でも食べられそうな美味しさです。',
  prefecture_id: 22
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon87.jpeg')), filename: 'icon87.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'うなぎ',
  description: '浜松はうなぎ養殖の発祥の地として知られており、鰻料理の名店が多く存在しています。関東風・関西風の調理法、どちらも楽しめる地域として有名であり、自分好みの味付けの鰻料理を探せるのも魅力です。',
  prefecture_id: 22
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon88.jpeg')), filename: 'icon88.jpeg')
end

Gourmet.find_or_create_by!(
  name: '手羽先',
  description: '名古屋めしの代表格と言えば「手羽先」。特徴は「2度揚げ」にあり、外はパリっと香ばしく中はふっくらジューシーに仕上がります。濃い味付けで酒の席の定番メニューです。',
  prefecture_id: 23
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon89.jpeg')), filename: 'icon89.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ひつまぶし',
  description: 'うなぎの蒲焼きをご飯の上に載せた料理。最初はそのまま、次にネギやわさび、きざみのりなど、一緒に出される薬味を乗せて、さらにその次はおだしやお茶をかけて食べるというのはひつまぶしの作法です。',
  prefecture_id: 23
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon90.jpeg')), filename: 'icon90.jpeg')
end

Gourmet.find_or_create_by!(
  name: '味噌カツ',
  description: '名古屋名物として知られる味噌カツは、味噌で味わうトンカツ料理のことです。味噌はこってりとしたデミグラスソースのような食感で相性も抜群です。',
  prefecture_id: 23
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon91.jpeg')), filename: 'icon91.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'きしめん',
  description: '400年以上も歴史のある愛知のソールフード。厚さ1mm、幅7から8mmほどの平たいうどんで、「カレーきしめん」や餅を入れる「力きしめん」、「カルボナーラきしめん」など、アレンジのバリエーションも豊富です。',
  prefecture_id: 23
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon92.jpeg')), filename: 'icon92.jpeg')
end

Gourmet.find_or_create_by!(
  name: '伊勢うどん',
  description: '伊勢神宮が鎮座する、伊勢市周辺で古くから親しまれているうどん。大きな特徴は、うどんなのにコシがないこと。そのぶん、もっちりふんわりと柔らかい食感が魅力です。',
  prefecture_id: 24
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon93.jpeg')), filename: 'icon93.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'てこね寿司',
  description: '伊勢志摩地方の郷土料理として知られるご当地グルメ。カツオやマグロなど、赤身の魚を醤油ベースのタレに漬け込んで、少し甘みのある酢飯の上に乗せた、ちらし寿司のような料理です。',
  prefecture_id: 24
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon94.jpeg')), filename: 'icon94.jpeg')
end

Gourmet.find_or_create_by!(
  name: '松阪牛',
  description: '舌の上でとろけるお肉の代名詞、松阪牛。手間ひまかけて丹精に育てられ、行き届いた管理のおかげで味わい深い絶品です。焼肉やステーキ、すき焼きなど様々な料理として楽しむことができます。',
  prefecture_id: 24
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon95.jpeg')), filename: 'icon95.jpeg')
end

Gourmet.find_or_create_by!(
  name: '伊勢海老',
  description: '三重県の伊勢海老の漁獲量は日本一で、「三重県のさかな」にも指定されています。炭火などの直火で焼く火場焼や、伊勢えびのおいしさを堪能できる伊勢えび汁など、色々な料理が味わえます。',
  prefecture_id: 24
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon96.jpeg')), filename: 'icon96.jpeg')
end

Gourmet.find_or_create_by!(
  name: '近江牛',
  description: '日本三大和牛のひとつにも数えられる近江牛は、滋賀県が誇る全国区のブランド牛。均一な霜降りが入った柔らかな肉は、見た目にも美しく、とろけるような食感と甘みを楽しめます。',
  prefecture_id: 25
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon97.jpeg')), filename: 'icon97.jpeg')
end

Gourmet.find_or_create_by!(
  name: '近江ちゃんぽん',
  description: '滋賀彦根市発の近江ちゃんぽんは、かつお節や昆布の和風だしを使い、野菜を中心としたたっぷりの具が入っているのが特徴。お酢を加えて味変を楽しむのが本場の食べ方です。',
  prefecture_id: 25
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon98.jpeg')), filename: 'icon98.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ふなずし',
  description: '滋賀を代表する郷土料理のふなずしは、塩漬けした魚と米を発酵させた「なれずし」の一種。独特の芳醇な香りと酸味がクセになります。',
  prefecture_id: 25
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon99.jpeg')), filename: 'icon99.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鴨鍋',
  description: '冬の琵琶湖にシベリアから飛来し、越冬するマガモ。その新鮮な肉を豆腐や野菜などと一緒に煮込んだ郷土の鍋料理です。寒い冬に備えて脂を蓄えた旬の鴨肉は絶品です。',
  prefecture_id: 25
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon100.jpeg')), filename: 'icon100.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'おばんざい',
  description: 'おばんざいとは、京都の家庭で昔から日常的に食べられているおかず全般を指す言葉です。季節の野菜や乾物を使った煮物、おひたしなどが定番です。',
  prefecture_id: 26
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon101.jpeg')), filename: 'icon101.jpeg')
end

Gourmet.find_or_create_by!(
  name: '湯豆腐',
  description: '昆布やかつお節のだしで調理した温かい豆腐を、タレや薬味とともに味わう湯豆腐。シンプルでありながら大豆の豊かな旨味を堪能できる、京都らしい逸品です。',
  prefecture_id: 26
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon102.jpeg')), filename: 'icon102.jpeg')
end

Gourmet.find_or_create_by!(
  name: '京都ラーメン',
  description: '一言では定義が難しいほど、京都ラーメンは多様性に富んでいます。スープも、鶏ガラや豚骨を使った醤油ベースの店から、背脂入りの濃厚なタイプ、透き通った清湯系など様々あります。',
  prefecture_id: 26
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon103.jpeg')), filename: 'icon103.jpeg')
end

Gourmet.find_or_create_by!(
  name: '抹茶スイーツ',
  description: '京都は宇治抹茶が有名なため、抹茶を使ったスイーツの名店も多数あります。香り高い抹茶の豊かな味わいはもちろん、趣向を凝らした美しい見た目のスイーツが大人気です。',
  prefecture_id: 26
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon104.jpeg')), filename: 'icon104.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'たこ焼き',
  description: '今や全国で食べられているたこ焼きですが、やはり本場大阪の味にはレベルの高さが感じられます。タレやトッピングのバリエーションなど、お店ごとの工夫も様々です。',
  prefecture_id: 27
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon105.jpeg')), filename: 'icon105.jpeg')
end

Gourmet.find_or_create_by!(
  name: '串カツ',
  description: '新世界エリアで親しまれる名物メニュー。串に刺した牛肉や魚介、野菜、うずらの卵などの具材に衣を付けて油でカラッと揚げ、ソースに浸して味わいます。',
  prefecture_id: 27
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon106.jpeg')), filename: 'icon106.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'お好み焼き',
  description: 'その昔、子どものおやつとして親しまれた小麦粉生地の「どんどん焼き」や「一銭洋食」がルーツと言われています。具材の種類が豊富で、組み合わせが自在なのも魅力です。',
  prefecture_id: 27
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon107.jpeg')), filename: 'icon107.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'てっちり',
  description: '大阪弁で「てっちり」と呼ばれるふぐ鍋は、お野菜もたっぷりと入った栄養満点のメニュー。鍋の〆にはご飯を入れて、ダシがしみ込んだ雑炊をいただくのも大変おいしいです。',
  prefecture_id: 27
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon108.jpeg')), filename: 'icon108.jpeg')
end

Gourmet.find_or_create_by!(
  name: '明石焼き',
  description: '小麦粉、じん粉、卵とだし汁を加え混ぜた生地にタコを入れ焼いたグルメ。見た目はタコ焼きに酷似していますが、ふわふわ食感でつけ汁に浸して食べるのが特徴です。',
  prefecture_id: 28
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon109.jpeg')), filename: 'icon109.jpeg')
end

Gourmet.find_or_create_by!(
  name: '神戸牛',
  description: '兵庫県産の黒毛和種「但馬牛」の中でも一定の品質を満たす、選りすぐりのブランド牛。手軽に食べるなら神戸牛のカツサンドがおすすめです。',
  prefecture_id: 28
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon110.jpeg')), filename: 'icon110.jpeg')
end

Gourmet.find_or_create_by!(
  name: '姫路おでん',
  description: '姫路市のご当地グルメ「姫路おでん」。おでんは一般的には辛子を添えて食べますが、姫路おでんは生姜醤油をかけて、あるいは、つけて食べるのが特徴です。',
  prefecture_id: 28
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon111.jpeg')), filename: 'icon111.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'そばめし',
  description: '神戸市長田区が発祥のそばめし。中華麺、ご飯、煮込んだ牛すじを熱々の鉄板で一緒に炒めソースで味付けした、神戸を代表する人気のB級グルメです。',
  prefecture_id: 28
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon112.jpeg')), filename: 'icon112.jpeg')
end

Gourmet.find_or_create_by!(
  name: '三輪そうめん',
  description: 'そうめん発祥の地とも言われる三輪地方の特産品。一般的なそうめんよりも極細でもっちりとした食感があり、釜揚げやにゅうめんなど、さまざまなメニューで堪能できるお店が数多くあります。',
  prefecture_id: 29
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon113.jpeg')), filename: 'icon113.jpeg')
end

Gourmet.find_or_create_by!(
  name: '柿の葉寿司',
  description: '柿の葉寿司は、鮭やサバの切り身を載せた酢飯を柿の葉に包んだ押し寿司で、奈良を代表する郷土料理として知られます。駅弁や行楽のお供としてテイクアウトできるのもポイントです。',
  prefecture_id: 29
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon114.jpeg')), filename: 'icon114.jpeg')
end

Gourmet.find_or_create_by!(
  name: '天理ラーメン',
  description: '辛味噌仕立てのスープに、炒めた白菜やニラ、豚肉などがたっぷりのった天理エリアのご当地ラーメン。細めの縮れ麺とコクのあるスープ、野菜のシャキシャキ感が絶妙に調和した一品です。',
  prefecture_id: 29
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon115.jpeg')), filename: 'icon115.jpeg')
end

Gourmet.find_or_create_by!(
  name: '飛鳥鍋',
  description: '鶏ガラスープに牛乳を加え、まろやかさとコクを加えてクリーミーに仕上げられたお鍋。ほっこりするような味わいが人気の奈良の郷土料理です',
  prefecture_id: 29
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon116.jpeg')), filename: 'icon116.jpeg')
end

Gourmet.find_or_create_by!(
  name: '和歌山ラーメン',
  description: '和歌山県北部のラーメン屋さんや大衆食堂で提供されるご当地ラーメンで、スープは大きく分けて醤油系と豚骨醤油系の2種類。麺はちぢれの無いストレートで、黄色味がかっているのが特長です。',
  prefecture_id: 30
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon117.jpeg')), filename: 'icon117.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'めはり寿司',
  description: '大きく丸く握ったご飯を、塩漬けの高菜でくるんだ熊野地方の郷土料理です。もともとはソフトボールぐらいの大きさで、目を見開いて食べることから「めはり」と名付けられた料理です。',
  prefecture_id: 30
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon118.jpeg')), filename: 'icon118.jpeg')
end

Gourmet.find_or_create_by!(
  name: '生まぐろ',
  description: '勝浦漁港は、延縄漁法での生まぐろの水揚げ量が日本一。鮮度抜群のまぐろは、臭みが全くなく脂のとろけるような旨みが味わえます。',
  prefecture_id: 30
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon119.jpeg')), filename: 'icon119.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'クエ鍋',
  description: '幻の魚と呼ばれることもあるクエは、天然物が少ないことで知られています。和歌山の白浜は、クエを養殖している場所として有名。身に脂がたっぷりとのり、上品でいて深い旨味が魅力です。',
  prefecture_id: 30
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon120.jpeg')), filename: 'icon120.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鳥取牛骨ラーメン',
  description: '全国的にも珍しい牛骨スープを使ったラーメン。牛骨特有の甘く香ばしい風味があり、ちぢれ麺と相性も良くまろやかな味わいが特徴です。',
  prefecture_id: 31
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon121.jpeg')), filename: 'icon121.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'モサエビ',
  description: 'モサエビとは、クロザコエビの鳥取県内での呼び名で、鮮度が落ちるのが早く、なかなか鳥取以外の地方に出回らないようです。甘エビをも上回ると称される甘みが魅力です。',
  prefecture_id: 31
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon122.jpeg')), filename: 'icon122.jpeg')
end

Gourmet.find_or_create_by!(
  name: '松葉がに',
  description: '鳥取県の鳥取港で水揚げされた、甲羅が11cm以上の松葉がにはブランドがにとして有名。殻がとても硬く、ハサミの部分が太いという特徴を持ちます。',
  prefecture_id: 31
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon123.jpeg')), filename: 'icon123.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ホルそば',
  description: 'ホルそばとは、ホルモン焼きを具材とした「ホルモン焼きそば」のこと。ほかの地域では豚ホルモンを使うところもありますが、こちらは牛ホルモンのみを具材としている点が特徴です。',
  prefecture_id: 31
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon124.jpeg')), filename: 'icon124.jpeg')
end

Gourmet.find_or_create_by!(
  name: '出雲そば',
  description: '出雲地方で古くから親しまれている出雲そばは、日本三大そばのひとつに数えられる郷土料理です。殻つきの蕎麦の実を製粉して作る麺は黒っぽく、独特の風味や香りが楽しめます。',
  prefecture_id: 32
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon125.jpeg')), filename: 'icon125.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'のどぐろ',
  description: '島根沖の漁場は、のどぐろの餌が豊富で、「白身のトロ」と絶賛される脂ののった「のどぐろ」の宝庫です。島根県では、1年を通じて刺身や塩焼き、鍋や煮付けなどののどぐろ料理が味わえます。',
  prefecture_id: 32
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon126.jpeg')), filename: 'icon126.jpeg')
end

Gourmet.find_or_create_by!(
  name: '松江おでん',
  description: '具材が大きく、おでんダネには珍しい、地元産の黒田セリや春菊などの葉物が入っているのが特徴です。うどんを入れた「おどん」も新ご当地グルメとして注目されています。',
  prefecture_id: 32
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon127.jpeg')), filename: 'icon127.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'しじみ',
  description: '島根県では国内の漁獲高日本一を誇るしじみが獲れます。しじみ汁をはじめ、しじみハンバーガーなどユニークなグルメを味わえます。',
  prefecture_id: 32
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon128.jpeg')), filename: 'icon128.jpeg')
end

Gourmet.find_or_create_by!(
  name: '津山ホルモンうどん',
  description: '新鮮なミックスホルモンをたっぷり入れ、味噌や醤油ベースのたれを絡めてうどんと一緒に焼き上げる津山ホルモンうどん。B-1グランプリでは準グランプリを獲得しています。',
  prefecture_id: 33
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon129.jpeg')), filename: 'icon129.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'デミかつ丼',
  description: '岡山県のかつ丼はデミグラスソースをからめたかつ丼で、デミかつ丼と呼ばれます。サクサクの衣を身にまとったかつに、甘く癖になる味わいのデミグラスソースが合わさっています',
  prefecture_id: 33
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon130.jpeg')), filename: 'icon130.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ばらずし',
  description: 'ばらずしは瀬戸内海の海の幸と旬の野菜を華やかに盛りつけたお寿司です。旬の食材で作るためその時どきの新鮮な魚介や風味豊かな野菜が味わえるのも楽しみの一つです。',
  prefecture_id: 33
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon131.jpeg')), filename: 'icon131.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'えびめし',
  description: 'えびめしは、デミグラスソースを中心に、カラメルやウスターソース、ケチャップなどで作った独自のソースで味付けしたチャーハン。意外とマイルドで上品な味わいです。',
  prefecture_id: 33
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon132.jpeg')), filename: 'icon132.jpeg')
end
Gourmet.find_or_create_by!(
  name: 'お好み焼き',
  description: '広島では生地の上にキャベツなどを重ねて焼いていく重ね焼が主流。これに中華そばなどの麺が加わることが多く、カットすると断面が層のようになっているのが特徴です。',
  prefecture_id: 34
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon133.jpeg')), filename: 'icon133.jpeg')
end

Gourmet.find_or_create_by!(
  name: '牡蠣',
  description: '広島県の名物牡蠣は、他の地域の牡蠣と違い、良質な漁場で育つため一回り・二回りも大きいのが特徴です。生牡蠣や焼牡蠣、牡蠣めしなど、あらゆる牡蠣料理が楽しめます。',
  prefecture_id: 34
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon134.jpeg')), filename: 'icon134.jpeg')
end

Gourmet.find_or_create_by!(
  name: '広島つけ麺',
  description: '広島市の新華園が発祥とされている広島つけ麺。冷たくしめた中華麺に、チャーシュー、ゆで野菜、ゆで卵の具材を合わせ、つけだれは醤油ベースに唐辛子やラー油を入れ、辛口に仕上げます。',
  prefecture_id: 34
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon135.jpeg')), filename: 'icon135.jpeg')
end

Gourmet.find_or_create_by!(
  name: '尾道ラーメン',
  description: '鶏がらに魚介を加えた醤油ベースのスープに豚の背脂が浮かべてあるのが特徴的な尾道ラーメン。コシのある平打ち麺がスープとよく絡み相性抜群です。',
  prefecture_id: 34
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon136.jpeg')), filename: 'icon136.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ふぐ',
  description: '下関といえば「とらふく」。特に冬の時期に下関市南風泊市場で水揚げされる活きた国内産「とらふく」は上品な甘味と豊かな香り、歯ごたえが絶妙です。',
  prefecture_id: 35
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon137.jpeg')), filename: 'icon137.jpeg')
end

Gourmet.find_or_create_by!(
  name: '瓦そば',
  description: '下関市豊浦町で生まれた郷土料理。熱々の瓦の上には、たっぷりの茶そばや錦糸卵、牛肉やレモン、ネギといった具が盛られ、あたたかいおつゆにつけていただきます。',
  prefecture_id: 35
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon138.jpeg')), filename: 'icon138.jpeg')
end

Gourmet.find_or_create_by!(
  name: '岩国寿司',
  description: '岩国市周辺で古くから親しまれている郷土料理。魚の身を混ぜた酢飯を木枠に入れ、3～5層ほどに重ねてつくられます。レンコンやしいたけ、錦糸卵や桜でんぶなど、色鮮やかな具で飾りつけられます。',
  prefecture_id: 35
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon139.jpeg')), filename: 'icon139.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ばりそば',
  description: 'パリパリ極中太のかた焼きそばに、あんかけスープと具が沢山入った麺料理。長崎の皿うどんと違い、皿うどんの優に2倍はあろうかというサイズが最大の特徴です。',
  prefecture_id: 35
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon140.jpeg')), filename: 'icon140.jpeg')
end

Gourmet.find_or_create_by!(
  name: '徳島ラーメン',
  description: '醤油系のスープをベースに豚のバラ肉やネギ・もやしをトッピングし、最後に生卵を割り落とすところが最大の特徴です。スープの色から、白色系、茶色系、黄色系と3系統に分類され、コクのある豚骨スープに濃い口醤油で味付けを行う茶系が代名詞とされています。',
  prefecture_id: 36
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon141.jpeg')), filename: 'icon141.jpeg')
end

Gourmet.find_or_create_by!(
  name: '阿波尾鶏',
  description: '徳島県の伝統的な盆踊り=阿波踊りにちなんで名付けられた阿波尾鶏は、徳島県で飼育されているブランド地鶏です。低脂肪で適度な歯ごたえ、甘味とコクがありジューシーな肉質が特徴です。',
  prefecture_id: 36
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon142.jpeg')), filename: 'icon142.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鳴門鯛',
  description: '全国的な知名度を誇るブランド食材・鳴門鯛。鳴門海峡の激しい激流に揉まれることで身が引き締まり、歯ごたえのある食感が最大の特徴です。',
  prefecture_id: 36
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon143.jpeg')), filename: 'icon143.jpeg')
end

Gourmet.find_or_create_by!(
  name: '祖谷そば',
  description: '祖谷の郷土料理の代表格。祖谷産のそば粉を100%使い、ほとんどつなぎを使わず打つため、太く少し短い麺で、香り高いのが特徴です。',
  prefecture_id: 36
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon144.jpeg')), filename: 'icon144.jpeg')
end

Gourmet.find_or_create_by!(
  name: '讃岐うどん',
  description: 'コシが強く、つるっとした喉ごしの良さ、もちもちの食感が楽しめる、麵が主役の讃岐うどん。ぶっかけ、かけ、しょうゆ、釜玉、釜バターなど、いろいろなスタイルで楽しまれています。',
  prefecture_id: 37
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon145.jpeg')), filename: 'icon145.jpeg')
end

Gourmet.find_or_create_by!(
  name: '骨付鳥',
  description: '丸亀市が発祥のご当地グルメ。骨の付いた鶏もも肉を、にんにくが効いたスパイスで味付けし、じっくり丁寧に焼いた一品で、外はカリッとした食感、中からはジューシーな旨みがあふれ出します。',
  prefecture_id: 37
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon146.jpeg')), filename: 'icon146.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ぴっぴ飯',
  description: '坂出発のそば飯のそばの代わりにうどんが入ったうどん飯。うどんのだしでしっかり味付けした御飯は、シンプルながらとてもクセになる美味しさです。',
  prefecture_id: 37
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon147.jpeg')), filename: 'icon147.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'かっしゃ焼',
  description: '香川県を代表する粉物グルメ、かっしゃ焼。見た目はたこ焼きそのものですが、中に入っているのはタコではなくカレー味の付いた鶏肉で、たこ焼きよりも柔らかくトロトロした食感です。',
  prefecture_id: 37
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon148.jpeg')), filename: 'icon148.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鯛めし',
  description: '愛媛県の郷土料理として有名な鯛めし。卵や醤油を混ぜた出汁に浸した切り身状の生の鯛を、ご飯と合わせ海鮮丼のように頂く「宇和島鯛めし」と、鯛丸ごと一匹を大胆に釜で炊く「松山鯛めし」の２種類があります。',
  prefecture_id: 38
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon149.jpeg')), filename: 'icon149.jpeg')
end

Gourmet.find_or_create_by!(
  name: '八幡浜ちゃんぽん',
  description: '野菜の他に特産品のじゃこ天などの練り物が具材に使われている、愛媛県オリジナルのちゃんぽんです。鰹や昆布で出汁を取るため、スープは通常の中華そばのように透き通っており、味わいもすっきりしています。',
  prefecture_id: 38
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon150.jpeg')), filename: 'icon150.jpeg')
end

Gourmet.find_or_create_by!(
  name: '今治焼き鳥',
  description: '焼き鳥と言えば鶏肉を串に刺して焼いたものが一般的ですが、今治焼き鳥は鶏肉を串に刺さずに鉄板の上で重しを乗せてプレスして焼き上げます。一般的な焼き鳥よりもサクサクに焼き上がるのが特徴です。',
  prefecture_id: 38
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon151.jpeg')), filename: 'icon151.jpeg')
end

Gourmet.find_or_create_by!(
  name: '焼豚玉子飯',
  description: '今治市のソウルフードであり、B級ご当地グルメNo.1とも言われている焼豚玉子飯。ご飯に焼豚をのせてから甘辛いタレをかけ、半熟目玉焼きをのせたシンプルな料理です。',
  prefecture_id: 38
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon152.jpeg')), filename: 'icon152.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'カツオ',
  description: '瀬戸内海で獲れた新鮮なカツオで作ったたたきは高知のご当地グルメの代表です。生姜やネギ、わさびなどの薬味とポン酢やタレをたっぷりかけたかつおのたたきは絶品そのものです。',
  prefecture_id: 39
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon153.jpeg')), filename: 'icon153.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鍋焼きラーメン',
  description: '鍋焼きうどんならぬ、鍋焼きラーメンが有名な高知県。ただ鍋に入れるだけでなく、鍋焼き用生麺を使った、親鳥の旨味あふれるご当地グルメです',
  prefecture_id: 39
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon154.jpeg')), filename: 'icon154.jpeg')
end

Gourmet.find_or_create_by!(
  name: '屋台餃子',
  description: '飲みの〆にラーメンと共に好んで食べられてきたのがちょっと小ぶりの餃子です。屋台の餃子の特徴は、普通の餃子の半分ほどの薄い皮で、独特な揚げ焼きなので、ちょっと冷めてもパリパリサクサクです。',
  prefecture_id: 39
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon155.jpeg')), filename: 'icon155.jpeg')
end

Gourmet.find_or_create_by!(
  name: '室戸キンメ丼',
  description: '日本屈指の金目鯛の水揚げ量を誇る室戸市。その金目鯛の照り焼きと旬の地魚の刺身を盛り合わせた贅沢なご当地丼ぶりで、そのまま半分食べた後に、金目鯛のダシが効いたお吸い物をかけていただくと2度美味しいどんぶりです。',
  prefecture_id: 39
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon156.jpeg')), filename: 'icon156.jpeg')
end

Gourmet.find_or_create_by!(
  name: '博多ラーメン',
  description: '博多ラーメンは、福岡を代表する名物料理。白濁したとんこつスープと細麺が基本で、注文時に麺の硬さが選べることや、替え玉ができるのが特徴です。',
  prefecture_id: 40
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon157.jpeg')), filename: 'icon157.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'もつ鍋',
  description: '博多が発祥の地といわれるもつ鍋は、鉄分豊富なスタミナ食材である、プリプリの牛もつが入っていることが特徴。もつ以外にもキャベツやニラがたっぷり入り、うま味が凝縮したスープを楽しめます。',
  prefecture_id: 40
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon158.jpeg')), filename: 'icon158.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'とり皮',
  description: 'カリカリ×モチモチという今までにない食感と、甘辛いタレが堪らないとり皮。カリッカリに焼けた皮は脂がしつこくなく何本でも食べられます。',
  prefecture_id: 40
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon159.jpeg')), filename: 'icon159.jpeg')
end

Gourmet.find_or_create_by!(
  name: '辛子明太子',
  description: '福岡で長く愛される特産品、辛子明太子。ぴりっとした辛さの中にも旨みたっぷりの辛子明太子を使ったグルメが数多くあります。',
  prefecture_id: 40
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon160.jpeg')), filename: 'icon160.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'シシリアンライス',
  description: '炒めたお肉とトマトやレタスなどの野菜をご飯の上にのせ、マヨネーズなどで味付けをしたもの。佐賀市内のレストランや喫茶店などで提供されているご当地グルメです。',
  prefecture_id: 41
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon161.jpeg')), filename: 'icon161.jpeg')
end

Gourmet.find_or_create_by!(
  name: '佐賀牛',
  description: '「JAさが」管内で飼育された黒毛和牛のうち、肉質等級4～5に相当する基準を満たしたもののみが佐賀牛と呼ばれます。細やかな霜降りが散りばめられた赤身からは、甘さや旨みも感じられます。',
  prefecture_id: 41
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon162.jpeg')), filename: 'icon162.jpeg')
end

Gourmet.find_or_create_by!(
  name: '呼子イカ',
  description: '呼子イカとは、唐津市呼子で獲れたケンサキイカのこと。透き通った美しい身は、ほのかに甘みがありコリコリとした癖になる食感が特徴です。',
  prefecture_id: 41
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon163.jpeg')), filename: 'icon163.jpeg')
end

Gourmet.find_or_create_by!(
  name: '竹崎かに',
  description: '太良町で獲れたブランドガニの竹崎かに。有明海のプランクトンなど豊かな自然の恵みを食べて育っているため、身がぎっしり。夏はオス、冬は卵を持ったメスが旬で、通年楽しめるのが特徴です。',
  prefecture_id: 41
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon164.jpeg')), filename: 'icon164.jpeg')
end

Gourmet.find_or_create_by!(
  name: '長崎ちゃんぽん',
  description: '長崎ちゃんぽんは中国の食文化の影響を受けてできた名物料理で、豚肉や魚介類、野菜など様々な具が入った栄養満点の麺料理です。長崎でしか食べられない唐灰汁で作られた麺の独特な香りを楽しめます。',
  prefecture_id: 42
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon165.jpeg')), filename: 'icon165.jpeg')
end

Gourmet.find_or_create_by!(
  name: '皿うどん',
  description: '長崎ちゃんぽんと並んで長崎県名物になっているのが、皿うどんです。本場長崎県には2種類の皿うどんがあり、パリパリ麺のほか、揚げないちゃんぽん麺を使用した柔らかい麺のバージョンもあり、この太麺と細麺の2種類から選ぶことができます。',
  prefecture_id: 42
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon166.jpeg')), filename: 'icon166.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'レモンステーキ',
  description: 'よくあるステーキの一枚肉ではなく、薄切りの牛肉を熱々の鉄板の上に乗せるのが特徴のひとつです。上からたっぷりのレモンを絞った醤油ベースのソースをかけ、赤いところの残ったレアの状態で提供されます。',
  prefecture_id: 42
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon167.jpeg')), filename: 'icon167.jpeg')
end

Gourmet.find_or_create_by!(
  name: '佐世保バーガー',
  description: 'アメリカンサイズの大きなバンズに分厚いビーフとベーコンエッグが挟まれているのが特徴の佐世保バーガー。佐世保バーガー認定制度も導入されなど、お店によって異なるこだわりの味わいを楽しむことができます。',
  prefecture_id: 42
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon168.jpeg')), filename: 'icon168.jpeg')
end

Gourmet.find_or_create_by!(
  name: '馬肉',
  description: 'ほかの肉に比べて、低カロリー、低脂肪、低コレステロール、高タンパクと栄養価が高い馬肉は、熊本県を代表する食材です。新鮮な馬刺しは、脂が白くとろける食感です。',
  prefecture_id: 43
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon169.jpeg')), filename: 'icon169.jpeg')
end

Gourmet.find_or_create_by!(
  name: '太平燕',
  description: '鶏ガラスープにたっぷりの野菜や魚介、そしてヘルシーな春雨が入った麺料理です。具材の旨みがたっぷり溶け込んだスープを吸ったツルツルの春雨の味わいと食感がクセになります。',
  prefecture_id: 43
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon170.jpeg')), filename: 'icon170.jpeg')
end

Gourmet.find_or_create_by!(
  name: '熊本ラーメン',
  description: '豚骨ラーメン発祥の地である福岡県久留米市から熊本県へと伝わったラーメンです。博多ラーメンよりも太い麺を使い、豚骨と鶏ガラを使用します。仕上げに揚げニンニクやマー油を添えるのも特徴でマイルドな味わいです。',
  prefecture_id: 43
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon171.jpeg')), filename: 'icon171.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'あか牛',
  description: '阿蘇の雄大な自然の中で育った和牛、あか牛は脂肪が少ない良質な赤身のお肉です。県内ではステーキにしたり、そのステーキを丼に載せたり、旨味たっぷりのハンバーグにしたり、様々な調理法で味わうことができます。',
  prefecture_id: 43
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon172.jpeg')), filename: 'icon172.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'とり天',
  description: '大分県民なら誰でも知っていて親しみのあるソウルフード。鶏の唐揚げとはまた少し違って、下味を付けた鶏肉に衣を付けて揚げ、酢醤油と練り辛子でいただくというスタイルが一般的です。',
  prefecture_id: 44
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon173.jpeg')), filename: 'icon173.jpeg')
end

Gourmet.find_or_create_by!(
  name: '地獄蒸し料理',
  description: '大分では、温泉の蒸気が噴出した地獄窯を利用して、食材を蒸し上げる調理法を地獄蒸しと呼んでいます。季節の野菜や地元で獲れた魚介類などを蒸気で蒸しあげるので旨味が逃げず、温泉の滋味も付加されて味わい深いものになります。',
  prefecture_id: 44
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon174.jpeg')), filename: 'icon174.jpeg')
end

Gourmet.find_or_create_by!(
  name: '別府冷麺',
  description: '別府冷麺は醤油ベースの黒いスープが特徴で、麺自体も盛岡冷麺の細麺にたいして別府冷麺は弾力重視の太麺が特徴です.',
  prefecture_id: 44
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon175.jpeg')), filename: 'icon175.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'りゅうきゅう',
  description: 'サバ・アジ・ブリなどの旬の魚の切り身を醤油ダレに漬け込み、薬味をかけていただく郷土料理。ほどよく染み込んだ醤油の味わいとトロリとした食感が魅力です。',
  prefecture_id: 44
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon176.jpeg')), filename: 'icon176.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'チキン南蛮',
  description: 'カラっと揚がった鶏肉に、甘酸っぱいタレとたっぷりのタルタルソースがかかった、宮崎を代表するローカルフード。タルタルソースの種類が多い店もあり、食べ比べするのもおすすめです。',
  prefecture_id: 45
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon177.jpeg')), filename: 'icon177.jpeg')
end

Gourmet.find_or_create_by!(
  name: '辛麺',
  description: '延岡市発祥のご当地ラーメン。唐辛子とにんにくが利いた辛くて旨いスープ、蕎麦粉と小麦粉で作られたこんにゃくの様な麺が特徴です。',
  prefecture_id: 45
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon178.jpeg')), filename: 'icon178.jpeg')
end

Gourmet.find_or_create_by!(
  name: '地鶏炭火焼き',
  description: '火柱の中で豪快に炙り焼く宮崎の代表グルメ。炭の香ばしさをまとった鶏肉はムチっとした弾力があり、噛めば噛むほど肉汁が口いっぱいに広がります。',
  prefecture_id: 45
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon179.jpeg')), filename: 'icon179.jpeg')
end

Gourmet.find_or_create_by!(
  name: '宮崎牛',
  description: '「全国和牛能力共進会」にて、最高賞「内閣総理大臣賞」を何度も受賞している宮崎のブランド牛。肉質とその霜降りの良さが最大の特徴です。',
  prefecture_id: 45
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon180.jpeg')), filename: 'icon180.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'つけあげ',
  description: 'さつま揚げのことで、他地域のさつま揚げよりも甘めの味付けが特徴です。鹿児島には幾つか有名なさつま揚げのお店があり、揚げたてのサクッとした食感のさつま揚げを食べられます。',
  prefecture_id: 46
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon181.jpeg')), filename: 'icon181.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'かごしま黒豚',
  description: '地元の名産であるサツマイモで育った黒豚は歯切れがよく、柔らかいことが特徴で、甘みのある上質な脂が魅力。とんかつ、豚しゃぶなど多様な絶品グルメを味わえます。',
  prefecture_id: 46
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon182.jpeg')), filename: 'icon182.jpeg')
end

Gourmet.find_or_create_by!(
  name: '鹿児島ラーメン',
  description: 'スープの白濁具合は薄めで、脂っこさも少ないため、あっさりとした味わい。柔らかめのストレート麺を使用し、ネギやもやしなど野菜のトッピングが多めなことが特徴です。',
  prefecture_id: 46
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon183.jpeg')), filename: 'icon183.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'しろくま',
  description: '鹿児島発祥のかき氷しろくまは、かき氷にフルーツ、豆類、ゼリーなどをトッピングして練乳をかけたもの。各店舗がその店オリジナルのしろくまを提供していることでも知られます。',
  prefecture_id: 46
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon184.jpeg')), filename: 'icon184.jpeg')
end

Gourmet.find_or_create_by!(
  name: '沖縄そば',
  description: '沖縄そばは、そば粉ではなく、小麦粉と水で作られたもっちりとした食感の麺が特徴です。ソーキそば（スペアリブ）や、テビチ（豚足）など、沖縄らしい食材をトッピングしたメニューも豊富です。',
  prefecture_id: 47
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon185.jpeg')), filename: 'icon185.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'ゴーヤチャンプルー',
  description: '島豆腐、豚肉、ゴーヤーなどの材料を炒め、仕上げに溶き卵を加えた郷土料理。ゴーヤの苦味と具材や出汁の甘味が食欲を刺激し、夏バテ防止にも一役買う暑い沖縄ならではの料理です。',
  prefecture_id: 47
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon186.jpeg')), filename: 'icon186.jpeg')
end

Gourmet.find_or_create_by!(
  name: 'タコライス',
  description: 'メキシコ料理でおなじみのタコスを、ご飯にトッピングして食べる沖縄発祥のメニュー。アメリカ領であった頃に伝わった、タコスをヒントに生み出されたものです。',
  prefecture_id: 47
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon187.jpeg')), filename: 'icon187.jpeg')
end

Gourmet.find_or_create_by!(
  name: '海ぶどう',
  description: '沖縄のヘルシーメニューのひとつで、別名「グリーンキャビア」とも呼ばれ、プチプチとした食感が特徴の海藻。お刺身やサラダでいただくのも美味ですが、沖縄では丼メニューも好評です。',
  prefecture_id: 47
).tap do |gourmet|
  gourmet.image.attach(io: File.open(Rails.root.join('db/fixtures/images/icon188.jpeg')), filename: 'icon188.jpeg')
end
