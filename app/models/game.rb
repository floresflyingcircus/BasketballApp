class Game < ActiveRecord::Base
  validates :opponent, presence: true
  validates :date, presence: true  
end
