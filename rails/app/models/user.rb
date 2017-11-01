class User < ApplicationRecord
    has_many :event_users, :foreign_key => :guest_id
    has_many :invited_events, :through => :event_users
    has_many :hosted_events, :foreign_key => "host_id", :class_name => "Event"
    has_many :event_items, :foreign_key => :assigned_person_id
end
