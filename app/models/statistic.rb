# Game statistics of player user.
class Statistic < ActiveRecord::Base
  belongs_to :user
  after_initialize :init

  def init
    self.win  ||= 0
    self.loss ||= 0
  end
end
