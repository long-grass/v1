class Event < ActiveRecord::Base
    has_many :guests
    belongs_to :host, :class_name => "User"
    has_many :event_comments
    has_one :event_location
    has_one :location ,:through => :event_location
end
