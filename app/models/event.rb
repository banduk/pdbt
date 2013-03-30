class Event < ActiveRecord::Base
  belongs_to :event_type
  attr_accessible :date, :description, :report, :testimonial
end
