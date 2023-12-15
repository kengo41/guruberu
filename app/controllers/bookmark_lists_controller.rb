class BookmarkListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @bookmark_lists = current_user.bookmark_lists
  end

  def show; end

  def new
    @bookmark_list = current_user.bookmark_lists.build
  end

  def edit; end

  def create
    @bookmark_list = current_user.bookmark_lists.build(list_params)
    if @bookmark_list.save
      redirect_to bookmark_lists_path
    else
      render :new
    end
  end

  def update
    if @bookmark_list.update(list_params)
      flash.now.notice = "リスト名を更新しました"
      render turbo_stream: [
        turbo_stream.replace(@bookmark_list),
        turbo_stream.update("flash", partial: "shared/flash_message")
      ]
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @bookmark_list.destroy!
      redirect_to my_page_path, success: "リストを削除しました"
    end
  end

  private

  def list_params
    params.require(:bookmark_list).permit(:name)
  end

  def set_list
    @bookmark_list = current_user.bookmark_lists.find(params[:id])
  end
end
