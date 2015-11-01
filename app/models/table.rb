# Game table for single match.
class Table < ActiveRecord::Base
  has_many :hands, dependent: :destroy, autosave: true
end
