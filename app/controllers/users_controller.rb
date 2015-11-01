# User's dashboard.
class UsersController < ApplicationController
  def index
    @users = User.all
    # TODO: markup it
    dashboard = @users.map { |usr| "name:#{usr.name}</br>win:#{usr.statistic.win}loss:#{usr.statistic.loss}</br>" }.join '<br/>'
    render text: dashboard.presence || 'Nobody yet here <b>:(</b>'
  end

  def show
    # TODO: render user dashboard
    render text: 'TODO: Dashboard here'
  end

  def new
    # TODO: sign in / sign up
    # render text: 'TODO: sign in / sign up'
  end

  def edit
    # TODO
  end

  def create
    @user = User.create params.slice :email, :nickname, :full_name
    render "#{@user.id}: #{@user.name} #{@user.new_record? ? 'CREATED' : 'FAILED'}"
    # TODO: render user dashboard
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end
end
