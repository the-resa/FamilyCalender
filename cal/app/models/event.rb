class Event < ActiveRecord::Base
  belongs_to :calendar

  validates_presence_of :title
  validates_length_of :title, :minimum => 6
  validates_length_of :title, :maximum => 40


end
