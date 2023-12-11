class GourmetsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @selected_prefecture_id = params[:prefecture_id]

    if @selected_prefecture_id.present?
      @gourmets = Gourmet.where(prefecture_id: @selected_prefecture_id).includes(:prefecture)
    else
      @gourmets = Gourmet.all.includes(:prefecture)
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
