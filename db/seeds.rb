# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create(opponent: "Blue Team", date: Time.now+2.weeks, start_time: Time.now)
Game.create(opponent: "Red Team", date: Time.now+3.weeks, start_time: Time.now)
Game.create(opponent: "White Team", date: Time.now+4.weeks, start_time: Time.now)


Player.create(name: "Hayley", number: 32)
Player.create(name: "Micayla", number: 31)
Player.create(name: "Riley", number: 30)
Player.create(name: "Taylor", number: 15)
Player.create(name: "Emily", number: 14)
Player.create(name: "Lexi", number: 13)	
Player.create(name: "Kacie", number: 3)	

Stat.create(player_id: 1, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
Stat.create(player_id: 2, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
Stat.create(player_id: 3, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
Stat.create(player_id: 5, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
Stat.create(player_id: 6, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
Stat.create(player_id: 7, two_made: 3, two_miss: 1, three_made: 2, three_miss: 3)
