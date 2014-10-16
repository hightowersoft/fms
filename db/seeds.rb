# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NewsItem.create(title: "News Item 1", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales euismod tristique. Nam sagittis justo sed cursus venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis nec justo sit amet elementum. Nunc iaculis feugiat pharetra. Nunc venenatis ante lectus, ac elementum ligula consequat eu. Cras dignissim ante a nisi luctus pellentesque. Proin pulvinar enim massa, at faucibus diam gravida vel. Aliquam lorem dolor, fringilla eu nulla eu, ultricies consequat urna.")
NewsItem.create(title: "News Item 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales euismod tristique. Nam sagittis justo sed cursus venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis nec justo sit amet elementum. Nunc iaculis feugiat pharetra. Nunc venenatis ante lectus, ac elementum ligula consequat eu. Cras dignissim ante a nisi luctus pellentesque. Proin pulvinar enim massa, at faucibus diam gravida vel. Aliquam lorem dolor, fringilla eu nulla eu, ultricies consequat urna.")
NewsItem.create(title: "News Item 3", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales euismod tristique. Nam sagittis justo sed cursus venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis nec justo sit amet elementum. Nunc iaculis feugiat pharetra. Nunc venenatis ante lectus, ac elementum ligula consequat eu. Cras dignissim ante a nisi luctus pellentesque. Proin pulvinar enim massa, at faucibus diam gravida vel. Aliquam lorem dolor, fringilla eu nulla eu, ultricies consequat urna.")

Team.create(short_name: "Team 1", long_name: "Team 1 FC", is_main: true, in_league: true)
Team.create(short_name: "Team 2", long_name: "Team 2 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 3", long_name: "Team 3 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 4", long_name: "Team 4 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 5", long_name: "Team 5 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 6", long_name: "Team 6 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 7", long_name: "Team 7 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 8", long_name: "Team 8 FC", is_main: false, in_league: true)
Team.create(short_name: "Team 9", long_name: "Team 9 FC", is_main: false, in_league: false)
Team.create(short_name: "Team 10", long_name: "Team 10 FC", is_main: false, in_league: false)

Player.create(firstname: "Player", surname: "1", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "2", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "3", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "4", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "5", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "6", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "7", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "8", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "9", position: "Goalkeeper", bio: "Bio here")
Player.create(firstname: "Player", surname: "10", position: "Goalkeeper", bio: "Bio here")