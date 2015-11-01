# Game table for single match.
class Table < ActiveRecord::Base
  has_many :hands
end
