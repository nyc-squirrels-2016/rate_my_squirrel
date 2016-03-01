# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
devin = User.create(username: "devin", password: "password", hometown: "NYC", bio: "I'm a tye-dye squirrel, yo.", email: "devin@example.com")
one_sq = Photo.create(user_id: devin.id, title: "trippy squirrel", url: "http://img14.deviantart.net/4547/i/2013/198/4/0/colorful_squirrel_by_megaossa-d5s7jx8.jpg")
two_sq = Photo.create(user_id: devin.id, title: "I gotcha!", url: "https://pbs.twimg.com/media/CZPnAxwWEAAWyXS.jpg")
