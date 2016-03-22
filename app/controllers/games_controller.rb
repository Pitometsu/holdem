class GamesController < ApplicationController
  def index
    @users = User.online # .reject! { |usr| usr.id == current_user }
  end
end
