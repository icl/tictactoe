class Subject < ActiveRecord::Base
  validates_presence_of :initials

  has_many :games

end
