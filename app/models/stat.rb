class Stat < ActiveRecord::Base
  belongs_to :player
  attr_accessible :assist, :block, :def_reb, :ft_made, :ft_miss, :off_reb, :steal, :three_made, :three_miss, :turnover, :two_made, :two_miss
end
