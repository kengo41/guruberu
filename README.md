# ご当地ぐるめっと
<img src="app/assets/images/ogp.png">

https://www.gotochi-gurumetto.com

## ◾ サービス概要
ご当地グルメを提供するお店の検索に特化したサービスです。
お店にはグルメ情報がタグ付けされており、グルメについても詳しく知ることができます。

## ◾ サービスを作成した背景
私自信よく旅行をするのですが、旅先ならではのグルメを楽しみたいと思っても、グルメやお店についての情報が散らばっており、お店選びに時間がかかり手間を感じていました。
そこで、グルメの調査からお店選びまでワンストップ完結でき手軽に飲食店を検索できるサービスとして「ご当地ぐるめっと」を開発しました。

## ◾ ターゲットユーザー
- 旅行先のお店探しに苦労した経験がある人
- グルメ好きで新しいお店を探している人

### ユーザーの抱える課題
- 予定を立てる際、交通手段からホテル、施設予約等、準備にはかなりの時間を要し、食事の選択に時間をかけられない。
- グルメやお店の情報が散らばっていて見つけにくい。特に土地勘がない場所では難しい。
- 大手グルメサイトでは評価点数が信頼性に欠ける。また、並び替えなどの機能を利用するには有料会員になる必要がある。
- お気に入りをしても、数が多くなると管理が難しくなる。

### 解決方法
- ご当地グルメの情報を一元化し、検索機能を使って簡単にお店を探せるようにする。
- お店をGooglePlacesAPIの情報を元に取得しリストアップし、クチコミスコア、グルメなどを用いて絞り込みが行えるようにする。
- ランキング機能を提供し、人気のお店を一覧で確認できるようにする。
- リスト保存機能を提供し、リストをユーザーが作成できることで管理しやすいようにする。

## ◾ 主な機能
### メイン機能
|フリーワード検索|現在地・マップ検索|
|-------------|---------------|
|[![Image from Gyazo](https://i.gyazo.com/48e6711fa333b01d01af658da6d1b64c.gif)](https://gyazo.com/48e6711fa333b01d01af658da6d1b64c)|[![Image from Gyazo](https://i.gyazo.com/8342c3fa24dd776089ab607a3d9356ca.gif)](https://gyazo.com/8342c3fa24dd776089ab607a3d9356ca)|
|フリーワードから検索が可能です。オートコンプリートにも対応しています。|現在地やマップに表示されているエリアから検索可能です。|

|絞り込み|リスト保存|
|------|---------|
|[![Image from Gyazo](https://i.gyazo.com/b093cafe3a07ebaf4e51f84b41109801.gif)](https://gyazo.com/b093cafe3a07ebaf4e51f84b41109801)|[![Image from Gyazo](https://i.gyazo.com/3386cd937fe26404e5f0845de2016da9.gif)](https://gyazo.com/3386cd937fe26404e5f0845de2016da9)|
|検索後、口コミ評価・価格帯・グルメで絞り込みが可能です。|気になるお店を作成したリストへ保存することができます。|

|レビュー|保存ランキング|
|------|------------|
|[![Image from Gyazo](https://i.gyazo.com/92a82641b31bb303f683347c7034a0a7.gif)](https://gyazo.com/92a82641b31bb303f683347c7034a0a7)|[![Image from Gyazo](https://i.gyazo.com/bcc529656959ecb2e4c05eb27bf48f77.gif)](https://gyazo.com/bcc529656959ecb2e4c05eb27bf48f77)|
|お店の評価とコメントを投稿することができます。|全ユーザーの保存したお店がランキングで表示され、保存された数も確認することができます。|

### その他機能
- 並べ替え機能
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
  - geocoder
  - gon
- API
  - Google Maps JavaScript API
  - Google Places API
  - Google Geolocation API

### フロントエンド
- Tailwind CSS
- Hotwire(Turbo, Stimulus)

### インフラ
- Heroku
- Amazon S3

## ◾ ER図
[![Image from Gyazo](https://i.gyazo.com/00b7d5f62e9f22d7753201fe7b3b3f23.png)](https://gyazo.com/00b7d5f62e9f22d7753201fe7b3b3f23)