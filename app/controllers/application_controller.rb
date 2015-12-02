class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
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
