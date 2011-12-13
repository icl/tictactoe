class Game < ActiveRecord::Base

  belongs_to :subject
  belongs_to :experimental_condition
  has_many :moves

  validates_inclusion_of :dimension, :in => 3..5, :message => "must be between 3 and 4"
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
    a
  end

  def total_moves
    moves.count
  end

  def total_valid_moves
    moves.valid.count
  end
  
  def total_invalid_moves
    moves.invalid.count
  end

  def mean_inter_move_interval
    total_imi = 0
    subject_moves_count = 0
    moves.each do | move |
      total_imi += move.inter_move_interval if move.subject_position
      subject_moves_count += 1 if move.subject_position
    end
    return total_imi / subject_moves_count
  end

  def mean_inter_valid_move_interval

    total_vimi = moves.subject.valid.inject(0) {|sum, move| sum += move.inter_success_interval }
   return total_vimi / moves.subject.valid.count 
  end

  def subject_game_number
    subject.games.index { |game| game.id == self.id } + 1
  end
end
