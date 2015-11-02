# User's dashboard.
class UsersController < ApplicationController
  def index
    @users = User.all
    # TODO: markup it
    dashboard = @users.map { |usr| "<b>name:</b> #{usr.name}</br><b>win:</b> #{usr.statistic.win}  <b>loss:</b> #{usr.statistic.loss}</br>" }.join '<br/>'
    render text: dashboard.presence || 'Nobody yet here <b>:(</b>'
  end

  def show
    @user = User.where(id: params[:id]).first
    # TODO: render user dashboard
    # render text: 'TODO: Dashboard here'
  end

  def new
    # TODO: sign in / sign up
    # render text: 'TODO: sign in / sign up'
  end

  def edit
    # TODO
  end

  def create
    @user = Statistic.new.create_user get_params
    render text: "#{@user.id}: #{@user.name} #{@user.new_record? ? 'FAILED' : 'CREATED'}"
    # # TODO: render user dashboard
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  private

  def get_params
    params.require :email
    params.require :password
    params.permit  :email, :password, :nickname, :full_name
  end
end
