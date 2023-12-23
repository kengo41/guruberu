class BookmarksController < ApplicationController
  def create
    @bookmark_list = BookmarkList.find(params[:list_id])
    @shop = Shop.find(params[:shop_id])
    @bookmark = @bookmark_list.bookmarks.build(shop: @shop)

    if @bookmark.save
      render json: { success: true, name: @bookmark.bookmark_list.name }
    else
      render json: { success: false, errors: @bookmark.errors.full_messages }
    end
  end

  def destroy
    bookmark_list = current_user.bookmark_lists.find_by(id: params[:id])
    shop = Shop.find(params[:shop_id])

    if bookmark_list.shops.destroy(shop)
      redirect_to bookmark_list_path(bookmark_list), success: '削除しました'
    else
      flash.now[:error] = '削除に失敗しました'
      render template: 'bookmark_list/show'
    end
  end
end
