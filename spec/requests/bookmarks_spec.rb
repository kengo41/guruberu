require 'rails_helper'

RSpec.describe "Bookmarks", type: :request do
  let(:user) { create(:user) }
  let(:shop) { create(:shop) }
  let(:bookmark_list) { create(:bookmark_list, user: user) }
  let(:bookmark) { create(:bookmark, bookmark_list: bookmark_list, shop: shop ) }

  before do
    login(user)
  end

  describe "POST /shops/:shop_id/bookmarks" do
    it 'リスト保存処理が正常に実行されること' do
      expect {
        post shop_bookmarks_path(shop, list_id: bookmark_list.id)
      }.to change(Bookmark, :count).by(1)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE /shops/:shop_id/bookmarks/:id' do
    it 'リストとショップの関連削除処理が正常に実行されること' do
      delete shop_bookmark_path(shop, bookmark_list)
      expect(response).to have_http_status(:success)
    end
  end
end
