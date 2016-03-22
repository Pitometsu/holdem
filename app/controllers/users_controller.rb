# -*- coding: utf-8 -*-
# User's dashboard.
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
    @statistic = @user.build_statistic

    if @user.save
      # log_in @user
      flash[:success] = "Welcome, #{@user.name}! We were waiting for you! 😎"
      redirect_to @user
    else
      flash[:failure] = 'Something went wrong during creating new user. You may try again.'
      render 'new'
    end
  end

  def update
    case params[:submit]
    when 'Forgot password'
      flash[:failure] = 'Coming soon!…'
    when 'Cancel'
      redirect_to @user
    when 'Save'
      do_update
    end
    redirect_to @user
  end

  def destroy
    # TODO
  end

  private

  def user_params
    params.require :email
    params.require :password
    params.permit  :email, :password, :nickname, :full_name
  end

  def do_update
    @user = User.find params[:id]

    if @user.update_attributes user_params
      flash[:success] = "All done, #{@user.name}! Prove your self!"
      redirect_to @user
    else
      render 'edit'
    end
  end
end
