# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "lisa@test.com", password: "password", first_name: "Lisa")
User.create(email: "scotty@test.com", password: "bones123", first_name: "Scotty")
User.create(email: "teddy@test.com", password: "playtime", first_name: "Teddy")
User.create(email: "user1@test.com", password: "password")
User.create(email: "user2@test.com", password: "password")
User.create(email: "user3@test.com", password: "password")
User.create(email: "user4@test.com", password: "password")
User.create(email: "user5@test.com", password: "password")
User.create(email: "user6@test.com", password: "password")
User.create(email: "user7@test.com", password: "password")
User.create(email: "user8@test.com", password: "password")
User.create(email: "user9@test.com", password: "password")
User.create(email: "user10@test.com", password: "password")


Event.create(title: "Picnic", location: "Central Park", start_time: "tomorrow at noon", host_id: 1)
Event.create(title: "BBQ", location: "My backyard", start_time: "tomorrow at 2:30pm", host_id: 1)
Event.create(title: "Party", location: "My house", start_time: "next Thursday at 8pm", host_id: 2)
Event.create(title: "Potluck Dinner", location: "Rec Center", start_time: "next Saturday at 4pm", host_id: 3)
Event.create(title: "Celebration", location: "Bar", start_time: "3/31/16 3pm", host_id: 3)

Item.create(name: "chips")
Item.create(name: "salsa")
Item.create(name: "wine")
Item.create(name: "beer")
Item.create(name: "dip")
Item.create(name: "cheese")
Item.create(name: "crackers")
Item.create(name: "pasta salad")
Item.create(name: "potato salad")
Item.create(name: "fruit")
Item.create(name: "bread")

EventUser.create(invited_event_id: 1, guest_id: 2, status: "yes")
EventUser.create(invited_event_id: 1, guest_id: 3, status: "yes")
EventUser.create(invited_event_id: 1, guest_id: 4, status: "no")
EventUser.create(invited_event_id: 1, guest_id: 5, status: "maybe")
EventUser.create(invited_event_id: 1, guest_id: 6, status: "yes")

EventItem.create(event_id: 1, item_id: 1, assigned_person_id: 1)
EventItem.create(event_id: 1, item_id: 2, assigned_person_id: 2)
EventItem.create(event_id: 1, item_id: 3, assigned_person_id: 1)
EventItem.create(event_id: 1, item_id: 3, assigned_person_id: 3)
EventItem.create(event_id: 1, item_id: 4, assigned_person_id: 4)
EventItem.create(event_id: 1, item_id: 5, assigned_person_id: 5)
EventItem.create(event_id: 1, item_id: 6)
EventItem.create(event_id: 1, item_id: 7)
EventItem.create(event_id: 1, item_id: 8)
EventItem.create(event_id: 1, item_id: 9)
EventItem.create(event_id: 1, item_id: 10)
# User.destroy_all

# users = User.create([
#     {name:'Mauricio',avatarUrl:"https://graph.facebook.com/10154445192311988/picture?type=normal"},
#     {name:'Pauline',avatarUrl:"https://graph.facebook.com/10153445192311988/picture?type=normal"},

#     ])
#     Circle.destroy_all
#     Circle.create!({
#         name: "james"
#     })
#     Location.destroy_all
#     Location.create!({
#         name: "jhull",latitude:55.2,longitude:4.3,
#     })
#     Post.destroy_all
    
#     20.times do
    
#         Post.create!({
#             user_id: 1,
#             circle_id: 1 ,
#             content: "blah blah blah"
#         })
#     end


#     Event.destroy_all
#     events = Event.create({
#         kind:'COCKTAILS',
#         time:"2017-06-23T20:00:00.000Z",
#         title:"James Bond Summer Ball",
#         user_id:1,
#         location_id:1
#     })

#     CircleUser.destroy_all
    
#     10.times do
    
#         CircleUser.create!({
#             circle_id: 1,
#             user_id: 1,
#             moderator: false
#         })
#     end