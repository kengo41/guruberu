# ご当地ぐるめっと
<img src="app/assets/images/ogp.png">

https://www.gotochi-gurumetto.com

## ◾ サービス概要
「ご当地ぐるめっと」は、ご当地グルメを提供するお店の検索に特化したサービスです。
お店にはグルメ情報がタグ付けされており、グルメについても詳しく知ることができます。

## ◾ サービスを作成した背景
私自信よく旅行をするのですが、旅先ならではのグルメを楽しみたいと思っても、グルメやお店についての情報が散らばっており、お店選びに時間がかかっていました。
そこで、グルメの調査からお店選びまでワンストップで完結でき、手軽に飲食店を検索できるサービスとして「ご当地ぐるめっと」を開発しました。

## ◾ ターゲットユーザー
- 旅行先のお店探しに苦労した経験がある人
- グルメ好きで新しいお店を探している人

### ユーザーの抱える課題
- 予定を立てる際、交通手段からホテル、施設予約等、準備にはかなりの時間を要し、食事の選択に時間をかけられない。
- グルメやお店の情報が散らばっていて見つけにくい。特に土地勘がない場所では難しい。
- 大手グルメサイトでは評価点数が信頼性に欠ける。また、並び替えなどの機能を利用するには有料会員になる必要がある。
- お店をブックマークをしても、数が増えると管理が大変になる。

### 解決方法
- ご当地グルメの情報を一元化し、検索機能を使って簡単にお店を探せるようにする。
- お店をGooglePlacesAPIの情報を元に取得し、会員でなくても並び替え・絞り込みが行えるようにする。
- リストごとの保存機能を提供し、ユーザーが管理しやすいようにする。

## ◾ 主な機能
### メイン機能
|フリーワード検索|現在地・マップ検索|絞り込み・並べ替え|
|--------------|---------------|---------------|
|[![Image from Gyazo](https://i.gyazo.com/83143039dfe6365c98153f790f72f4ac.gif)](https://gyazo.com/83143039dfe6365c98153f790f72f4ac)|[![Image from Gyazo](https://i.gyazo.com/37ca17f229bf86927d448b875c15d148.gif)](https://gyazo.com/37ca17f229bf86927d448b875c15d148)|[![Image from Gyazo](https://i.gyazo.com/3fa9b46226904fcbf819904b3032afdb.gif)](https://gyazo.com/3fa9b46226904fcbf819904b3032afdb)|
|フリーワードから検索が可能です。オートコンプリートにも対応しています。|現在地やマップに表示されているエリアから検索可能です。|検索後、評価・価格帯・グルメで絞り込み、評価・距離で並べ替えが可能です。|

|リスト保存|レビュー|保存ランキング|
|--------|-------|-----------|
|[![Image from Gyazo](https://i.gyazo.com/9615d249e09203851a089177677a23c8.gif)](https://gyazo.com/9615d249e09203851a089177677a23c8)|[![Image from Gyazo](https://i.gyazo.com/ee0e1b8ce4b6fee495c6063ea6bc0d5e.gif)](https://gyazo.com/ee0e1b8ce4b6fee495c6063ea6bc0d5e)|[![Image from Gyazo](https://i.gyazo.com/4adc020d5ac3a836048c41524a88c88e.gif)](https://gyazo.com/4adc020d5ac3a836048c41524a88c88e)|
|お店を作成したリストへ保存することができます。|お店の評価とコメントを投稿することができます。|全ユーザーの保存数でランキング表示され、保存数も確認することができます。|

### その他機能
- リスト、レビューの編集削除
- プロフィールの編集・アイコン設定
- グルメ検索

## ◾ 使用技術
### バックエンド
- Ruby 3.2.2
- Ruby on Rails 7.0.7
- PostgreSQL
- gem
  - devise
  - carrierwave
  - kaminari
  - geocoder
  - gon
- API
  - Google Maps JavaScript API
  - Google Places API
  - Geocoding API

### フロントエンド
- Tailwind CSS
- Hotwire(Turbo, Stimulus)

### インフラ
- Heroku
- Amazon S3

## ◾ ER図
[![Image from Gyazo](https://i.gyazo.com/00b7d5f62e9f22d7753201fe7b3b3f23.png)](https://gyazo.com/00b7d5f62e9f22d7753201fe7b3b3f23)