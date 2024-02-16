require 'rails_helper'

RSpec.describe Gourmet, type: :model do
  let(:prefecture) { FactoryBot.create(:prefecture) }
  describe 'バリデーションに関するテスト' do
    it 'グルメ名がある場合は有効' do
      gourmet = FactoryBot.build(:gourmet, prefecture: prefecture)
      expect(gourmet).to be_valid
    end

    it 'グルメ名がない場合は無効' do
      gourmet_without_name = FactoryBot.build(:gourmet, name: '', prefecture: prefecture)
      expect(gourmet_without_name).to be_invalid
    end
  end

  describe '関連付けに関するテスト' do
    it 'shopsとの関連付けが正しく設定されていること' do
      gourmet = FactoryBot.create(:gourmet, prefecture: prefecture)
      shop = FactoryBot.create(:shop)
      gourmet.shops << shop
      expect(gourmet.shops).to include shop
    end
  end
end
