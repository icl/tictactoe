class Subject < ActiveRecord::Base
  validates_presence_of :initials
  validates_presence_of :email
  has_many :games

end
