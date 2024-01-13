class BookmarksController < ApplicationController
  def create
    bookmark_list = BookmarkList.find(params[:list_id])
    shop = Shop.find(params[:shop_id])
    bookmark = bookmark_list.bookmarks.build(shop: shop)

    if bookmark.save
      render json: { success: true, name: bookmark.bookmark_list.name }
    end
  end

  def destroy
    bookmark_list = current_user.bookmark_lists.find_by(id: params[:id])
    shop = Shop.find(params[:shop_id])

    if bookmark_list.shops.destroy(shop)
      other_bookmarks_exist = Bookmark.user_bookmarked_shop?(current_user, shop) ? true : false
      render json: { success: true, name: bookmark_list.name, other_bookmarks_exist: other_bookmarks_exist }
    end
  end
end
