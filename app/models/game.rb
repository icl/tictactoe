class Game < ActiveRecord::Base

  belongs_to :subject
  belongs_to :experimental_condition
  has_many :moves

  validates_inclusion_of :dimension, :in => 3..4, :message => "must be between 3 and 4"
  validates_presence_of :experimental_condition_id
  validates_presence_of :subject_id
  delegate :name, :to => :experimental_condition, :prefix => true

  def state
    
    a = Array.new.fill('-', 0, (dimension * dimension))
    moves.each do | move |
      a[move.subject_position - 1] = 'X' if !move.is_error?
      a[move.computer_position - 1 ] = 'O' if !move.is_error?
    end
    a
  end
end
