class Stat < ActiveRecord::Base
  belongs_to          :player

  delegate            :name,
                        to: :player,
                        prefix: true
end
