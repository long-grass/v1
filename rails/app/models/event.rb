class Event < ApplicationRecord

    has_many :event_users, :foreign_key => :invited_event_id
    has_many :guests, :through => :event_users
    belongs_to :host, :class_name => "User"
    has_many :event_items, dependent: :destroy
    has_many :items, through: :event_items



    def guests_sorted
        guests.sort_by {|guest| guest.full_name}
      end
      
end
