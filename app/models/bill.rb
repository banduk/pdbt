class Bill < ActiveRecord::Base
  belongs_to :pay_method
  attr_accessible :description, :expires, :title, :pay_method_id
end
