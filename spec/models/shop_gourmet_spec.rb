require 'rails_helper'

RSpec.describe ShopGourmet, type: :model do
  describe 'バリデーションに関するテスト' do
    it '１つのショップに同じグルメが存在しないこと' do
      shop_gourmet = FactoryBot.create(:shop_gourmet)
      duplicate_shop_gourmet = FactoryBot.build(:shop_gourmet, gourmet: shop_gourmet.gourmet, shop: shop_gourmet.shop)
      expect(duplicate_shop_gourmet).to be_invalid
    end
  end

  describe '関連付けに関するテスト' do
    it '正しい関連付けが設定されていること' do
      gourmet = FactoryBot.create(:gourmet)
      shop = FactoryBot.create(:shop)
      shop_gourmet = FactoryBot.create(:shop_gourmet, gourmet: gourmet, shop: shop)
      expect(shop_gourmet.gourmet).to eq gourmet
      expect(shop_gourmet.shop).to eq shop
    end
  end
end
