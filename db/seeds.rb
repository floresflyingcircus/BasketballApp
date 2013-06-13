# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create(opponent: "Those guys", date: Time.now+2.weeks)
Game.create(opponent: "Those other guys", date: Time.now+3.weeks)
Game.create(opponent: "Those other other guys", date: Time.now+4.weeks)