class Calendar < ActiveRecord::Base
  has_many :events, :dependent => :destroy
  
  belongs_to :user
  
  validates_presence_of :title
  validates_length_of :title, :minimum => 3
  validates_length_of :title, :maximum => 40

end
