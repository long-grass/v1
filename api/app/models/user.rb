class User < ActiveRecord::Base
    has_many :guests
    has_many :hosted_events, :foreign_key => "host_id", :class_name => "Event"
end
