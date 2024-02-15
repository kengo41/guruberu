require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe 'バリデーションに関するテスト' do
    it '店名、緯度、経度、place_idがある場合は有効' do
      valid_shop = FactoryBot.build(:shop)
      expect(valid_shop).to be_valid
    end

    it '店名がない場合は無効' do
      shop_without_name = FactoryBot.build(:shop, name: '')
      expect(shop_without_name).to be_invalid
    end

    it '緯度がない場合は無効' do
      shop_without_latitude = FactoryBot.build(:shop, latitude: '')
      expect(shop_without_latitude).to be_invalid
    end

    it '経度がない場合は無効' do
      shop_without_longitude = FactoryBot.build(:shop, longitude: '')
      expect(shop_without_longitude).to be_invalid
    end

    it 'place_idがない場合は無効' do
      shop_without_place_id = FactoryBot.build(:shop, place_id: '')
      expect(shop_without_place_id).to be_invalid
    end
  end

  describe '関連付けに関するテスト' do
    before do
      @shop = FactoryBot.create(:shop)
    end

    it 'shop_gourmetsとgourmetsの関連付けが正しく設定されていること' do
      gourmet = FactoryBot.create(:gourmet)
      @shop.gourmets << gourmet
      expect(@shop.gourmets).to include gourmet
    end

    it 'bookmarksとbookmark_listsの関連付けが正しく設定されていること' do
      user = FactoryBot.create(:user)
      bookmark_list = FactoryBot.create(:bookmark_list, user: user)
      @shop.bookmark_lists << bookmark_list
      expect(@shop.bookmark_lists).to include bookmark_list
    end

    it 'reviewsとの関連付けが正しく設定されていること' do
      review = FactoryBot.create(:review, shop: @shop)
      expect(@shop.reviews).to include review
    end
  end
end
