class Game < ActiveRecord::Base

  belongs_to :subject
  belongs_to :experimental_condition
  has_many :moves

  validates_inclusion_of :dimension, :in => 3..4, :message => "must be between 3 and 4"
  validates_presence_of :experimental_condition_id
  validates_presence_of :subject_id
  delegate :name, :to => :experimental_condition, :prefix => true

  after_save :move_first_if_neccesary

  def move_first_if_neccesary
    self.moves.create(  computer_position: (rand(self.dimension() * self.dimension() - 1 ) + 1)
                     
                     
                     
                     ) if self.comp_moves_first &&  self.moves.count == 0

  end


  def state
    
    a = Array.new.fill('-', 0, (dimension * dimension))
    moves.each do | move |
      a[move.subject_position - 1] = 'X' if !move.is_error? && move.subject_position
      a[move.computer_position - 1 ] = 'O' if !move.is_error? && move.computer_position
    end
    puts a
    a
  end
end
