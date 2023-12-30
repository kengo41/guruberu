class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    gon.latitude = 34.397667
    gon.longitude = 132.4728037

    if params[:address].present?
      location = Geocoder.search(params[:address]).first
      if location
        gon.latitude = location.latitude
        gon.longitude = location.longitude
        prefecture = get_prefecture_from_coordinates(gon.latitude, gon.longitude)
        @shops = fetch_shops_by_prefecture(prefecture, gon.latitude, gon.longitude)
        gon.markerData = @shops
      else
        @shops = []
      end
    elsif params[:latitude].present? && params[:longitude].present?
      gon.latitude = params[:latitude]
      gon.longitude = params[:longitude]
      prefecture = get_prefecture_from_coordinates(gon.latitude, gon.longitude)
      @shops = fetch_shops_by_prefecture(prefecture, gon.latitude, gon.longitude)
      gon.markerData = @shops
    else
      @shops = []
    end
  end

  def show
    @shop = Shop.find(params[:id])
    gon.latitude = @shop.latitude
    gon.longitude = @shop.longitude
  end

  private

  def shop_params
    params.permit(:address, :latitude, :longitude)
  end

  # 都道府県に基づいて店舗を取得
  def fetch_shops_by_prefecture(prefecture, latitude, longitude)
    case prefecture
    when '北海道'
      fetch_shops(['ジンギスカン', 'スープカレー', '札幌ラーメン', '海鮮丼'], latitude, longitude)
    when '青森県'
      fetch_shops(['十和田バラ焼き', 'せんべい汁', 'つゆ焼きそば', '大間マグロ'], latitude, longitude)
    when '岩手県'
      fetch_shops(['盛岡冷麺', 'わんこそば', 'じゃじゃ麺', '前沢牛'], latitude, longitude)
    when '宮城県'
      fetch_shops(['牛タン', 'ずんだ', '笹かまぼこ', 'はらこ飯'], latitude, longitude)
    when '秋田県'
      fetch_shops(['きりたんぽ', '比内地鶏', '横手焼きそば', 'ハタハタ'], latitude, longitude)
    when '山形県'
      fetch_shops(['米沢牛', '芋煮', '玉こんにゃく', '米沢ラーメン'], latitude, longitude)
    when '福島県'
      fetch_shops(['喜多方ラーメン', 'なみえ焼きそば', '円盤餃子', 'ソースカツ丼'], latitude, longitude)
    when '茨城県'
      fetch_shops(['あんこう鍋', '常陸牛', '水戸納豆', '常陸秋そば'], latitude, longitude)
    when '栃木県'
      fetch_shops(['宇都宮餃子', '佐野ラーメン', '宇都宮焼きそば', 'いもフライ'], latitude, longitude)
    when '群馬県'
      fetch_shops(['ひもかわうどん', '焼きまんじゅう', 'おっきりこみ', '水沢うどん'], latitude, longitude)
    when '埼玉県'
      fetch_shops(['豆腐らーめん', 'すったて', 'くるみそば', '煮ぼうとう'], latitude, longitude)
    when '千葉県'
      fetch_shops(['なめろう', '勝浦タンタンメン', 'ホワイト餃子', '竹岡ラーメン'], latitude, longitude)
    when '東京都'
      fetch_shops(['江戸前寿司', '深川めし', 'もんじゃ焼き', 'どぜう鍋'], latitude, longitude)
    when '神奈川県'
      fetch_shops(['サンマーメン', '横浜家系ラーメン', '牛鍋', 'しらす'], latitude, longitude)
    when '新潟県'
      fetch_shops(['へぎそば', 'イタリアン焼きそば', 'タレかつ丼', 'のどぐろ'], latitude, longitude)
    when '富山県'
      fetch_shops(['富山ブラックラーメン', 'ホタルイカ', 'ます寿司', '氷見うどん'], latitude, longitude)
    when '石川県'
      fetch_shops(['能登丼', '金沢カレー', 'ハントンライス', '金沢おでん'], latitude, longitude)
    when '福井県'
      fetch_shops(['越前がに', '越前そば', 'ソースカツ丼', 'ボルガライス'], latitude, longitude)
    when '山梨県'
      fetch_shops(['ほうとう', '吉田うどん', '甲府鳥もつ煮', '甲州ワインビーフ'], latitude, longitude)
    when '長野県'
      fetch_shops(['信州そば', 'おやき', '信州サーモン', '山賊焼き'], latitude, longitude)
    when '岐阜県'
      fetch_shops(['飛騨牛', '鶏ちゃん', '高山ラーメン', '朴葉味噌'], latitude, longitude)
    when '静岡県'
      fetch_shops(['静岡おでん', '富士宮やきそば', '浜松餃子', 'うなぎ'], latitude, longitude)
    when '愛知県'
      fetch_shops(['手羽先', 'ひつまぶし', '味噌カツ', 'きしめん'], latitude, longitude)
    when '三重県'
      fetch_shops(['伊勢うどん', 'てこね寿司', '松阪牛', '伊勢海老'], latitude, longitude)
    when '滋賀県'
      fetch_shops(['近江牛', '近江ちゃんぽん', 'ふなずし', '鴨鍋'], latitude, longitude)
    when '京都府'
      fetch_shops(['おばんざい', '湯豆腐', '京都ラーメン', '抹茶スイーツ'], latitude, longitude)
    when '大阪府'
      fetch_shops(['たこ焼き', '串カツ', 'お好み焼き', 'てっちり'], latitude, longitude)
    when '兵庫県'
      fetch_shops(['明石焼き', '神戸牛', '姫路おでん', 'そばめし'], latitude, longitude)
    when '奈良県'
      fetch_shops(['三輪そうめん', '柿の葉寿司', '天理ラーメン', '飛鳥鍋'], latitude, longitude)
    when '和歌山県'
      fetch_shops(['和歌山ラーメン', 'めはり寿司', '生まぐろ', 'クエ鍋'], latitude, longitude)
    when '鳥取県'
      fetch_shops(['鳥取牛骨ラーメン', 'モサエビ', '松葉がに', 'ホルそば'], latitude, longitude)
    when '島根県'
      fetch_shops(['出雲そば', 'のどぐろ', '松江おでん', 'しじみ'], latitude, longitude)
    when '岡山県'
      fetch_shops(['津山ホルモンうどん', 'デミかつ丼', 'ばらずし', 'えびめし'], latitude, longitude)
    when '広島県'
      fetch_shops(['広島風お好み焼き', '牡蠣', '広島つけ麺', '尾道ラーメン'], latitude, longitude)
    when '山口県'
      fetch_shops(['ふぐ', '瓦そば', '岩国寿司', 'ばりそば'], latitude, longitude)
    when '徳島県'
      fetch_shops(['徳島ラーメン', '阿波尾鶏', '鳴門鯛', '祖谷そば'], latitude, longitude)
    when '香川県'
      fetch_shops(['讃岐うどん', '骨付鳥', 'ぴっぴ飯', 'かっしゃ焼'], latitude, longitude)
    when '愛媛県'
      fetch_shops(['鯛めし', '八幡浜ちゃんぽん', '今治焼き鳥', '焼豚玉子飯'], latitude, longitude)
    when '高知県'
      fetch_shops(['カツオ', '鍋焼きラーメン', '屋台餃子', '室戸キンメ丼'], latitude, longitude)
    when '福岡県'
      fetch_shops(['博多ラーメン', 'もつ鍋', 'とり皮', '辛子明太子'], latitude, longitude)
    when '佐賀県'
      fetch_shops(['シシリアンライス', '佐賀牛', '呼子イカ', '竹崎かに'], latitude, longitude)
    when '長崎県'
      fetch_shops(['長崎ちゃんぽん', '皿うどん', 'レモンステーキ', '佐世保バーガー'], latitude, longitude)
    when '熊本県'
      fetch_shops(['馬肉', '太平燕', '熊本ラーメン', 'あか牛'], latitude, longitude)
    when '大分県'
      fetch_shops(['とり天', '地獄蒸し料理', '別府冷麺', 'りゅうきゅう'], latitude, longitude)
    when '宮崎県'
      fetch_shops(['チキン南蛮', '辛麺', '地鶏炭火焼き', '宮崎牛'], latitude, longitude)
    when '鹿児島県'
      fetch_shops(['つけあげ', 'かごしま黒豚', '鹿児島ラーメン', 'しろくま'], latitude, longitude)
    when '沖縄県'
      fetch_shops(['沖縄そば', 'ゴーヤチャンプルー', 'タコライス', '海ぶどう'], latitude, longitude)
    else
      []
    end
  end

  # キーワードに基づいて店舗を検索
  def fetch_shops(keywords, latitude, longitude)
    shops = []
    keywords.each do |keyword|
      base_url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?"
      parameters = {
        location: "#{latitude},#{longitude}",
        radius: 1000,
        types: 'restaurant',
        keyword: keyword,
        language: 'ja',
        key: ENV['API_KEY']
      }

      url = base_url + parameters.to_query
      response = Net::HTTP.get(URI(url))
      results = JSON.parse(response)["results"]

      sorted_by_user_ratings = results.sort { |a, b| b['user_ratings_total'].to_i <=> a['user_ratings_total'].to_i }.first(10)
      top_rated_shops = sorted_by_user_ratings.sort_by { |place_data| -place_data['rating'].to_f }.first(5)

      top_rated_shops.each do |place_data|
        shop = Shop.find_or_create_from_api_data(place_data, keyword)
        shops << shop unless shops.any? { |s| s.place_id == shop.place_id }
      end
    end
    shops
  end

  # 座標から都道府県を取得する
  def get_prefecture_from_coordinates(latitude, longitude)
    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?latlng=#{latitude},#{longitude}&key=#{ENV['API_KEY']}&language=ja")

    if response.code == 200
      result = JSON.parse(response.body)
      if result['status'] == 'OK'
        # 配列の最初の要素から最も基本的な情報を取得
        address_components = result['results'][0]['address_components']
        # 都道府県の要素を抽出
        prefecture = address_components.find { |component| component['types'].include?('administrative_area_level_1') }
        prefecture_name = prefecture['long_name'] if prefecture
        return prefecture_name
      else
        # エラーがある場合の処理
        puts "エラーが発生しました: #{result['status']}"
        return nil
      end
    else
      # レスポンスコードが異常な場合の処理
      puts "リクエストが失敗しました: #{response.code}"
      return nil
    end
  end
end
