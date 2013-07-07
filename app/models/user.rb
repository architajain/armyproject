class User < ActiveRecord::Base
  attr_accessible :address, :age, :department, :email_id, :empid, :experience, :location, :name, :phone_no, :qualification, :role
end
