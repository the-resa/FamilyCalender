class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :calendars, :dependent => :destroy
  has_many :events, :through => :calendars
end
