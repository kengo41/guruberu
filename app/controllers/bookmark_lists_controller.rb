class BookmarkListsController < ApplicationController
  def index
    @bookmark_lists = current_user.bookmark_lists
  end

  def new
    @bookmark_list = current_user.bookmark_lists.build
  end

  def create
    @bookmark_list = current_user.bookmark_lists.build(list_params)
    if @bookmark_list.save
      redirect_to bookmark_lists_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:bookmark_list).permit(:name)
  end
end
