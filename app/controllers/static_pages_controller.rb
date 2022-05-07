# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @microposts = Micropost.all
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 50)
    end
  end
end
