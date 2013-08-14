class Player < ActiveRecord::Base
  has_many :stats

  attr_accessible :in_game, :name, :number



end
