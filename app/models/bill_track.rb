class BillTrack < ActiveRecord::Base
  belongs_to :bill
  attr_accessible :observation, :pay_date, :bill_id
end
