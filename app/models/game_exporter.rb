class GameExporter

  def intialize game
    @game = game
  end

  def summary_attributes
    { subject_initials: @game.subject.initials }
  end
end
