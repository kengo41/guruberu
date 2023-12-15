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

  def destroy; end
end
