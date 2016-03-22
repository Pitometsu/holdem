class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :track_user

  protected

  def configure_permitted_parameters
    # binding.pry

    devise_parameter_sanitizer.for :sign_up do |usr|
      usr.permit usr_sign_up_params
    end

    devise_parameter_sanitizer.for :sign_in do |usr|
      usr.permit usr_sign_in_params
    end

    devise_parameter_sanitizer.for :account_update do |usr|
      usr.permit usr_account_update_params
    end
  end

  def track_user
    current_user.track unless current_user.nil?
  end

  def after_sign_in_path_for(resource)
    '/'
  end

  private

  def usr_sign_up_params
    [:email, :password, :password_confirmation,
     :nickname, :full_name, :remember_me]
  end

  def usr_sign_in_params
    [:login, :email, :password, :nickname, :full_name, :remember_me]
  end

  def usr_account_update_params
    [:email, :password, :password_confirmation,
     :current_password, :nickname, :full_name]
  end
end
