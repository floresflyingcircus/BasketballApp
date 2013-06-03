class Game < ActiveRecord::Base
  attr_accessible :date, :opponent, :start_time
end
