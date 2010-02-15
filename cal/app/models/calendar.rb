class Calendar < ActiveRecord::Base
  # if a calendar is deleted, then the according events are also deleted
  has_many :events, :dependent => :destroy
  
  validates_length_of :title, :minimum => 6
  validates_length_of :title, :maximum => 40
  
end
