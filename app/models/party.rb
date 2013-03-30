class Party < ActiveRecord::Base
  belongs_to :event
  attr_accessible :flyer, :gross_profit, :net_profit, :paying_audience
end
