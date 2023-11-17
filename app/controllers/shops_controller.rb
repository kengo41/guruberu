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
        @shops = fetch_shops_by_prefecture(prefecture)
      else
        @shops = []
      end
    elsif params[:latitude].present? && params[:longitude].present?
      gon.latitude = params[:latitude]
      gon.longitude = params[:longitude]
      prefecture = get_prefecture_from_coordinates(gon.latitude, gon.longitude)
      @shops = fetch_shops_by_prefecture(prefecture)
    else
      @shops = []
    end

    gon.markerData = @shops
  end

  private

  # 都道府県に基づいて店舗を取得
  def fetch_shops_by_prefecture(prefecture)
    case prefecture
    when 'Hokkaido'
      fetch_shops(['ジンギスカン', 'スープカレー', '札幌ラーメン'])
    when 'Aomori'
      fetch_shops(['十和田バラ焼き', 'せんべい汁'])
    when 'Iwate'
      fetch_shops(['盛岡冷麺'])
    when 'Miyagi'
      fetch_shops(['牛タン', '仙台ラーメン'])
    when 'Akita'
      fetch_shops(['きりたんぽ'])
    when 'Yamagata'
      fetch_shops(['米沢牛'])
    when 'Fukushima'
      fetch_shops(['喜多方ラーメン'])
    when 'Tochigi'
      fetch_shops(['宇都宮餃子'])
    when 'Gunma'
      fetch_shops(['すき焼き', 'ひもかわうどん', '水沢うどん'])
    when 'Ibaraki'
      fetch_shops(['あんこう鍋'])
    when 'Saitama'
      fetch_shops(['熊谷うどん'])
    when 'Chiba'
      fetch_shops(['なめろう'])
    when 'Tokyo'
      fetch_shops(['月島もんじゃ', '江戸前寿司', '深川めし'])
    when 'Kanagawa'
      fetch_shops(['しらす'])
    when 'Niigata'
      fetch_shops(['のどぐろ'])
    when 'Yamanashi'
      fetch_shops(['吉田うどん', 'ほうとう'])
    when 'Nagano'
      fetch_shops(['戸隠そば', '富倉そば'])
    when 'Toyama'
      fetch_shops(['富山ブラックラーメン', 'ます寿司'])
    when 'Ishikawa'
      fetch_shops(['能登丼', '金沢カレー'])
    when 'Fukui'
      fetch_shops(['越前がに', '越前そば'])
    when 'Shizuoka'
      fetch_shops(['うな重', '富士宮やきそば'])
    when 'Gifu'
      fetch_shops(['飛騨牛'])
    when 'Aichi'
      fetch_shops(['手羽先', 'ひつまぶし'])
    when 'Mie'
      fetch_shops(['赤福氷', 'てこね寿司'])
    when 'Shiga'
      fetch_shops(['ふなずし', '近江牛'])
    when 'Kyoto'
      fetch_shops(['京のおばんざい'])
    when 'Osaka'
      fetch_shops(['たこ焼き', '串カツ', 'てっちり'])
    when 'Hyogo'
      fetch_shops(['姫路おでん', '神戸牛'])
    when 'Nara'
      fetch_shops(['三輪そうめん', '釜めし'])
    when 'Wakayama'
      fetch_shops(['和歌山ラーメン', 'めはりずし'])
    when 'Tottori'
      fetch_shops(['モサエビ', 'かに汁'])
    when 'Shimane'
      fetch_shops(['出雲そば'])
    when 'Okayama'
      fetch_shops(['岡山カレー', 'ばら寿司'])
    when 'Hiroshima'
      fetch_shops(['広島風お好み焼き', '牡蠣', '尾道ラーメン'])
    when 'Yamaguchi'
      fetch_shops(['ふぐ', '瓦そば', '岩国寿司'])
    when 'Tokushima'
      fetch_shops(['徳島ラーメン'])
    when 'Kagawa'
      fetch_shops(['讃岐うどん'])
    when 'Ehime'
      fetch_shops(['宇和島鯛めし', '松山鯛めし'])
    when 'Kochi'
      fetch_shops(['かつお'])
    when 'Fukuoka'
      fetch_shops(['水炊き', 'もつ鍋', '明太子'])
    when 'Saga'
      fetch_shops(['呼子のイカ'])
    when 'Nagasaki'
      fetch_shops(['佐世保バーガー'])
    when 'Kumamoto'
      fetch_shops(['熊本馬刺し', 'だご汁'])
    when 'Oita'
      fetch_shops(['佐伯海鮮丼', 'とり天'])
    when 'Miyazaki'
      fetch_shops(['みやざき地頭鶏'])
    when 'Kagoshima'
      fetch_shops(['白くま'])
    when 'Okinawa'
      fetch_shops(['ソーキそば', 'ゴーヤチャンプルー'])
    else
      []
    end
  end

  # キーワードに基づいて店舗を検索
  def fetch_shops(keywords)
    unique_shops = {}
    keywords.each do |keyword|
      results = @client.spots(gon.latitude, gon.longitude, radius: 1000, types: ['restaurant'], keyword: keyword, language: 'ja', rankby: 'prominence').first(10)
      results.each do |result|
        unique_shops[result.place_id] = result if !unique_shops.key?(result.place_id)
      end
    end
    unique_shops.values.first(20)
  end

  # 座標から都道府県を取得する
  def get_prefecture_from_coordinates(latitude, longitude)
    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?latlng=#{latitude},#{longitude}&key=#{ENV['API_KEY']}")

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
