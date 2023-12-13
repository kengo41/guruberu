class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    gon.latitude = 34.397667
    gon.longitude = 132.4728037

    @client = GooglePlaces::Client.new(ENV['API_KEY'])

    if params[:address].present?
      location = Geocoder.search(params[:address]).first
      if location
        gon.latitude = location.latitude
        gon.longitude = location.longitude
        prefecture = get_prefecture_from_coordinates(gon.latitude, gon.longitude)
        places_data = fetch_shops_by_prefecture(prefecture)
      else
        places_data = []
      end
    elsif params[:latitude].present? && params[:longitude].present?
      gon.latitude = params[:latitude]
      gon.longitude = params[:longitude]
      prefecture = get_prefecture_from_coordinates(gon.latitude, gon.longitude)
      places_data = fetch_shops_by_prefecture(prefecture)
    else
      places_data = []
    end

    gon.markerData = places_data

    @shops = places_data.map do |place_data|
      shop = Shop.find_or_initialize_by(place_id: place_data.place_id)
      unless shop.persisted?

        if place_data.photos.present?
          photo = place_data.photos.first
          photo_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo.photo_reference}&key=#{ENV['API_KEY']}"
        end

        shop.attributes = {
          name: place_data.name,
          address: place_data.formatted_address || place_data.vicinity,
          phone_number: place_data.formatted_phone_number,
          opening_hours: place_data.opening_hours&.[]("weekday_text")&.join(", ") || "N/A",
          image: photo_url,
          website: place_data.website,
          place_id: place_data.place_id,
          latitude: place_data.lat,
          longitude: place_data.lng,
          rating: place_data.rating,
          # total_ratings: place_data.user_ratings_total || 0,
          price_level: place_data.price_level
        }
        shop.save

        gourmets = Gourmet.where(name: place_data.keyword)
        shop.gourmets << gourmets
      end
      shop
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
  def fetch_shops_by_prefecture(prefecture)
    case prefecture
    when '北海道'
      fetch_shops(['ジンギスカン', 'スープカレー', '札幌ラーメン', '海鮮丼'])
    when '青森県'
      fetch_shops(['十和田バラ焼き', 'せんべい汁', 'つゆ焼きそば', '大間マグロ'])
    when '岩手県'
      fetch_shops(['盛岡冷麺', 'わんこそば', 'じゃじゃ麺', '前沢牛'])
    when '宮城県'
      fetch_shops(['牛タン', 'ずんだ', '笹かまぼこ', 'はらこ飯'])
    when '秋田県'
      fetch_shops(['きりたんぽ', '比内地鶏', '横手焼きそば', 'ハタハタ'])
    when '山形県'
      fetch_shops(['米沢牛', '芋煮', '玉こんにゃく', '米沢ラーメン'])
    when '福島県'
      fetch_shops(['喜多方ラーメン', 'なみえ焼きそば', '円盤餃子', 'ソースカツ丼'])
    when '茨城県'
      fetch_shops(['あんこう鍋', '常陸牛', '水戸納豆', '常陸秋そば'])
    when '栃木県'
      fetch_shops(['宇都宮餃子', '佐野ラーメン', '宇都宮焼きそば', 'いもフライ'])
    when '群馬県'
      fetch_shops(['ひもかわうどん', '焼きまんじゅう', 'おっきりこみ', '水沢うどん'])
    when '埼玉県'
      fetch_shops(['豆腐らーめん', 'すったて', 'くるみそば', '煮ぼうとう'])
    when '千葉県'
      fetch_shops(['なめろう', '勝浦タンタンメン', 'ホワイト餃子', '竹岡ラーメン'])
    when '東京都'
      fetch_shops(['江戸前寿司', '深川めし', 'もんじゃ焼き', 'どぜう鍋'])
    when '神奈川県'
      fetch_shops(['サンマーメン', '横浜家系ラーメン', '牛鍋', 'しらす'])
    when '新潟県'
      fetch_shops(['へぎそば', 'イタリアン焼きそば', 'タレかつ丼', 'のどぐろ'])
    when '富山県'
      fetch_shops(['富山ブラックラーメン', 'ホタルイカ', 'ます寿司', '氷見うどん'])
    when '石川県'
      fetch_shops(['能登丼', '金沢カレー', 'ハントンライス', '金沢おでん'])
    when '福井県'
      fetch_shops(['越前がに', '越前そば', 'ソースカツ丼', 'ボルガライス'])
    when '山梨県'
      fetch_shops(['ほうとう', '吉田うどん', '甲府鳥もつ煮', '甲州ワインビーフ'])
    when '長野県'
      fetch_shops(['信州そば', 'おやき', '信州サーモン', '山賊焼き'])
    when '岐阜県'
      fetch_shops(['飛騨牛', '鶏ちゃん', '高山ラーメン', '朴葉味噌'])
    when '静岡県'
      fetch_shops(['静岡おでん', '富士宮やきそば', '浜松餃子', 'うなぎ'])
    when '愛知県'
      fetch_shops(['手羽先', 'ひつまぶし', '味噌カツ', 'きしめん'])
    when '三重県'
      fetch_shops(['伊勢うどん', 'てこね寿司', '松阪牛', '伊勢海老'])
    when '滋賀県'
      fetch_shops(['近江牛', '近江ちゃんぽん', 'ふなずし', '鴨鍋'])
    when '京都府'
      fetch_shops(['おばんざい', '湯豆腐', '京都ラーメン', '抹茶スイーツ'])
    when '大阪府'
      fetch_shops(['たこ焼き', '串カツ', 'お好み焼き', 'てっちり'])
    when '兵庫県'
      fetch_shops(['明石焼き', '神戸牛', '姫路おでん', 'そばめし'])
    when '奈良県'
      fetch_shops(['三輪そうめん', '柿の葉寿司', '天理ラーメン', '飛鳥鍋'])
    when '和歌山県'
      fetch_shops(['和歌山ラーメン', 'めはり寿司', '生まぐろ', 'クエ鍋'])
    when '鳥取県'
      fetch_shops(['鳥取牛骨ラーメン', 'モサエビ', '松葉がに', 'ホルそば'])
    when '島根県'
      fetch_shops(['出雲そば', 'のどぐろ', '松江おでん', 'しじみ'])
    when '岡山県'
      fetch_shops(['津山ホルモンうどん', 'デミかつ丼', 'ばらずし', 'えびめし'])
    when '広島県'
      fetch_shops(['広島風お好み焼き', '牡蠣', '広島つけ麺', '尾道ラーメン'])
    when '山口県'
      fetch_shops(['ふぐ', '瓦そば', '岩国寿司', 'ばりそば'])
    when '徳島県'
      fetch_shops(['徳島ラーメン', '阿波尾鶏', '鳴門鯛', '祖谷そば'])
    when '香川県'
      fetch_shops(['讃岐うどん', '骨付鳥', 'ぴっぴ飯', 'かっしゃ焼'])
    when '愛媛県'
      fetch_shops(['鯛めし', '八幡浜ちゃんぽん', '今治焼き鳥', '焼豚玉子飯'])
    when '高知県'
      fetch_shops(['カツオ', '鍋焼きラーメン', '屋台餃子', '室戸キンメ丼'])
    when '福岡県'
      fetch_shops(['博多ラーメン', 'もつ鍋', 'とり皮', '辛子明太子'])
    when '佐賀県'
      fetch_shops(['シシリアンライス', '佐賀牛', '呼子イカ', '竹崎かに'])
    when '長崎県'
      fetch_shops(['長崎ちゃんぽん', '皿うどん', 'レモンステーキ', '佐世保バーガー'])
    when '熊本県'
      fetch_shops(['馬肉', '太平燕', '熊本ラーメン', 'あか牛'])
    when '大分県'
      fetch_shops(['とり天', '地獄蒸し料理', '別府冷麺', 'りゅうきゅう'])
    when '宮崎県'
      fetch_shops(['チキン南蛮', '辛麺', '地鶏炭火焼き', '宮崎牛'])
    when '鹿児島県'
      fetch_shops(['つけあげ', 'かごしま黒豚', '鹿児島ラーメン', 'しろくま'])
    when '沖縄県'
      fetch_shops(['沖縄そば', 'ゴーヤチャンプルー', 'タコライス', '海ぶどう'])
    else
      []
    end
  end

  # キーワードに基づいて店舗を検索
  def fetch_shops(keywords)
    unique_shops = {}
    keywords.each do |keyword|
      results = @client.spots(gon.latitude, gon.longitude, radius: 1000, types: ['restaurant'], keyword: keyword, language: 'ja', rankby: 'prominence').first(5)
      results.each do |result|
        if !unique_shops.key?(result.place_id)
          result.keyword = []
          result.keyword << keyword
          unique_shops[result.place_id] = result
        else
          unique_shops[result.place_id].keyword << keyword
        end
      end
    end
    unique_shops.values
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
