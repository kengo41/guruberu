require 'rails_helper'

RSpec.describe Prefecture, type: :model do
  describe 'バリデーションに関するテスト' do
    it '名前がある場合は有効' do
      prefecture = FactoryBot.build(:prefecture)
      expect(prefecture).to be_valid
    end

    it '名前がない場合は無効' do
      prefecture = FactoryBot.build(:prefecture, name: '')
      expect(prefecture).to be_invalid
    end
  end

  describe '関連付けに関するテスト' do
    before do
      @prefecture = FactoryBot.create(:prefecture)
    end

    it 'gourmetsとの関連付けが正しく設定されていること' do
      gourmet = FactoryBot.create(:gourmet, prefecture: @prefecture)
      expect(@prefecture.gourmets).to include gourmet
    end
  end
end
