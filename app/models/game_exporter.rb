class GameExporter

  def initialize game
    @game = game
  end

  def summary_attributes
    { subject_initials:                     @game.subject.initials,
      dimension:                            @game.dimension,
      condition:                            @game.experimental_condition.name,
      subject_game_number:                  @game.subject_game_number,
      total_moves:                          @game.total_moves,
      total_valid_moves:                    @game.total_valid_moves,
      total_invalid_moves:                  @game.total_invalid_moves,
      mean_inter_move_interval:             @game.mean_inter_move_interval,
      mean_inter_valid_move_interval:       @game.mean_inter_valid_move_interval
    }
  end
end
