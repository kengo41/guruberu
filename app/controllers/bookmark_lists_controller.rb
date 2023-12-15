class BookmarkListsController < ApplicationController
  def index
    @bookmark_lists = current_user.bookmark_lists
  end

  def new; end

  def create; end
end
