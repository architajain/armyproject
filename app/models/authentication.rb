class Authentication < ActiveRecord::Base
  attr_accessible :empid, :password_digest, :password, :password_confirmation
  has_secure_password
      validates_presence_of :password, :on => :create
      validates :empid, uniqueness: true, presence: true
end
