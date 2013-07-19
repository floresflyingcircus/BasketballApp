class Game < ActiveRecord::Base
  has_many :stats

  validates :opponent, presence: true
  validates :date, presence: true  


end
