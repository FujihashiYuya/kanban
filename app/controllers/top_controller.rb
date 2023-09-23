class TopController < ApplicationController
  def index
    # ここに追加
    @lists = List.where(user: current_user).order("created_at ASC")
  end
end
