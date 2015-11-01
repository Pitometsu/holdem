# Game statistics of player user.
class Statistic < ActiveRecord::Base
  belongs_to :user
end
