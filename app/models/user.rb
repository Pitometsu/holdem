# User of service, the player or administrator.
class User < ActiveRecord::Base
  rolify
  has_one :statistic, dependent: :destroy, autosave: true

  def name
    full_name || nickname || email
  end

  def hand
    fail 'nothing yet here'
  end
end
