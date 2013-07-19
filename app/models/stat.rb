class Stat < ActiveRecord::Base
  belongs_to          :player
  belongs_to          :game

  

  delegate            :name,
                        to: :player,
                        prefix: true

  

end
