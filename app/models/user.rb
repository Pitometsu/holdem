# User of service, the player or administrator.
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable,
         # :confirmable,
         :onliner,
         authentication_keys: { email: true,
                                login: false }
  rolify
  has_one :statistic, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :statistic
  attr_reader :login

  def login
    full_name.presence || nickname.presence || email
  end

  def hand
    fail 'nothing yet here'
  end

  # Authentication by :login

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login      = conditions.delete :login

    if login
      where(conditions.to_hash).where(login_query login.downcase).first
    else
      conditions[:email].downcase! if conditions[:email]
      where(conditions.to_hash).first
    end
  end

  private

  def login_query(value)
    "lower(full_name) = #{value}"\
    " OR lower(nickname) = #{value}"\
    " OR lower(email) = #{value}"
  end
end
