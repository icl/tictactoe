class Game < ActiveRecord::Base

  belongs_to :subject
  belongs_to :experimental_condition

  validates_inclusion_of :dimension, :in => 3..5, :message => "must be between 3 and 5"
  validates_presence_of :experimental_condition_id
  validates_presence_of :subject_id
  delegate :name, :to => :experimental_condition, :prefix => true
end
