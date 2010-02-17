class Calendar < ActiveRecord::Base
  has_many :events, :dependent => :destroy
  
  validates_length_of :title, :minimum => 6
  validates_length_of :title, :maximum => 40
end
