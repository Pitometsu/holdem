# User of service, the player or administrator.
class User < ActiveRecord::Base
  rolify
  has_one :statistic, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :statistic

  def name
    full_name.presence || nickname.presence || email.presence
  end

  def hand
    fail 'nothing yet here'
  end
end
