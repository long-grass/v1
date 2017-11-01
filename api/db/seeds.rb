# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
User.create(name:"Phil Hardy",avatarUrl:"https://graph.facebook.com/10154445192311988/picture?type=normal")
User.create(name:"Roger Planes",avatarUrl:"https://graph.facebook.com/10153470472875756/picture?type=normal")
User.create(name:"Mark Hartley",avatarUrl:"https://graph.facebook.com/10207459310094409/picture?type=normal")
User.create(name:"Fie Jelved",avatarUrl:"https://graph.facebook.com/10153981598127950/picture?type=normal")


Event.destroy_all
Event.create(kind: "COCKTAILS", title: "James Bond Summer Ball", time: "2017-06-23T20:00:00.000Z", host_id: User.find_by(name:"Phil Hardy").id)
Event.create(kind: "COCKTAILS",time:"2017-12-23T20:00:00.000Z",title:"James Bond Winter Ball",host_id: User.find_by(name:"Mark Hartley").id)
Event.create(kind: "BEERS",time:"2017-06-23T18:00:00.000Z",title:"Silicon Drinkabout",host_id: User.find_by(name:"Mark Hartley").id)
Event.create(kind: "BEERS",time:"2017-07-28T18:00:00.000Z",title:"Silicon Drinkabout",host_id: User.find_by(name:"Mark Hartley").id)
Event.create(kind: "BEERS",time:"2017-02-24T17:00:00.000Z",title:"Silicon Rhino Office Warming",host_id: User.find_by(name:"Roger Planes").id)
Event.create(kind: "COFFEES",time:"2017-08-21T13:00:00.000Z",title:"Javascript Meetup",host_id: User.find_by(name:"Phil Hardy").id)
Event.create(kind: "MILKSHAKES",time:"2017-08-19T16:30:00.000Z",title:"Outdoor Cinema",host_id: User.find_by(name:"Mark Hartley").id)

EventComment.destroy_all
EventComment.create(
    user_id:1,
    event_id:1,
    timestamp:'2017-06-20T15:21:21.000Z',
    message: "Looking forward to this!"

)
EventComment.create(
    user_id:2,
    event_id:1,
    timestamp:'2017-06-23T18:53:45.000Z',
    message: "Not long to go now :)"

)

EventComment.create(
    user_id:1,
    event_id:1,
    timestamp:'2017-06-24T13:31:01.000Z',
    message: "Thanks for coming everyone"

)

EventComment.create(
    user_id:1,
    event_id:2,
    timestamp:"2017-06-24T14:32:27.000Z",
    message:"Can you send details about the dress code?"
)

EventComment.create(
    user_id:2,
    event_id:3,
    timestamp:"2017-06-20T17:31:17.000Z",
    message:"Sorry, I can't make this one"
)

EventComment.create(
    user_id:3,
    event_id:4,
    timestamp:"2017-06-18T18:34:12.000Z",
    message:"I'll be there"
)

EventComment.create(
    user_id:4,
    event_id:4,
    timestamp:"2017-06-18T18:40:52.000Z",
    message:"Me too"
)


Location.destroy_all
Location.create(name: "Radisson Blu Hotel", latitude: 51.517608, longitude: -0.127625)
Location.create(name:"Duke of York",latitude:51.499211,longitude:-0.09947)
Location.create(name:"Old Thameside Inn",latitude:51.507013,longitude:-0.09061)
Location.create(name:"Silicon Rhino London",latitude:51.498511,longitude:-0.104288)
Location.create(name:"Pret A Manger, Elephant & Castle",latitude:51.49354,longitude:-0.101082)
Location.create(name:"Chiswick House & Gardens",latitude:51.482478,longitude:-0.25924)


EventLocation.destroy_all
EventLocation.create(event_id:1,location_id:1)
EventLocation.create(event_id:2,location_id:1)
EventLocation.create(event_id:3,location_id:2)
EventLocation.create(event_id:4,location_id:3)
EventLocation.create(event_id:5,location_id:4)
EventLocation.create(event_id:6,location_id:5)
EventLocation.create(event_id:7,location_id:6)



Guest.destroy_all
Guest.create(user_id:1,event_id:1,attending:'yes')
Guest.create(user_id:2,event_id:1,attending:'yes')
Guest.create(user_id:2,event_id:1,attending:'yes')

Guest.create(user_id:1,event_id:2,attending:'yes')
Guest.create(user_id:3,event_id:2,attending:'yes')
Guest.create(user_id:4,event_id:2,attending:'yes')

Guest.create(user_id:1,event_id:4,attending:'yes')
Guest.create(user_id:2,event_id:4,attending:'yes')
Guest.create(user_id:3,event_id:4,attending:'yes')
Guest.create(user_id:4,event_id:4,attending:'yes')

Guest.create(user_id:1,event_id:5,attending:'yes')
Guest.create(user_id:2,event_id:5,attending:'yes')
Guest.create(user_id:3,event_id:5,attending:'yes')
Guest.create(user_id:4,event_id:5,attending:'yes')

Guest.create(user_id:4,event_id:6,attending:'yes')

Guest.create(user_id:3,event_id:7,attending:'yes')





