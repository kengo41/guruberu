require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  describe 'バリデーションに関するテスト' do
    it '１つのリストに同じショップは保存できないこと' do
      bookmark = FactoryBot.create(:bookmark)
      duplicate_bookmark = FactoryBot.build(:bookmark, bookmark_list: bookmark.bookmark_list, shop: bookmark.shop)
      expect(duplicate_bookmark).to be_invalid
    end
  end

  describe '関連付けに関するテスト' do
    it '正しい関連付けが設定されていること' do
      bookmark_list = FactoryBot.create(:bookmark_list)
      shop = FactoryBot.create(:shop)
      bookmark = FactoryBot.create(:bookmark, bookmark_list: bookmark_list, shop: shop)
      expect(bookmark.bookmark_list).to eq bookmark_list
      expect(bookmark.shop).to eq shop
    end
  end
end
