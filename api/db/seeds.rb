# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Event.destroy_all
Event.create(kind: "COCKTAILS", title: "James Bond Summer Ball", time: "2017-06-23T20:00:00.000Z", host_id: User.find_by(name:"Phil Hardy").id)

User.destroy_all
User.create(name:"Phil Hardy",avatarUrl:"https://graph.facebook.com/10154445192311988/picture?type=normal")
User.create(name:"Roger Planes",avatarUrl:"https://graph.facebook.com/10153470472875756/picture?type=normal")
User.create(name:"bill",avatarUrl:"https://i.pinimg.com/736x/bc/21/b5/bc21b5ac34798cb3ab68a5bdaf3e9402--carly-rae-jepsen.jpg")
User.create(name:"alison",avatarUrl:"https://i.pinimg.com/736x/bc/21/b5/bc21b5ac34798cb3ab68a5bdaf3e9402--carly-rae-jepsen.jpg")


Location.destroy_all
Location.create(name: "Radisson Blu Hotel", latitude: 51.517608, longitude: -0.127625)
Location.create(name: "Hilly Fields", latitude: 51.5, longitude: -2)

Guest.destroy_all
Guest.create(user_id:1,event_id:1,attending:'yes')
Guest.create(user_id:2,event_id:2,attending:'yes')
Guest.create(user_id:2,event_id:1,attending:'yes')
Guest.create(user_id:1,event_id:2,attending:'yes')

EventComment.destroy_all
EventComment.create(
    user_id:1,
    event_id:1,
    timestamp:'2017-06-20T15:21:21.000Z',
    message: "Looking forward to this!"

)
EventComment.create(
    user_id:1,
    event_id:1,
    timestamp:'2017-06-23T18:53:45.000Z',
    message: "Not long to go now :)"

)

EventLocation.destroy_all
EventLocation.create(
    event_id:1,
    location_id:1,
)

