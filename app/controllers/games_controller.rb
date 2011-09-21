class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])

    respond_to do | format |
      if @game.save
        format.html { redirect_to @game, notice: 'Game Created' }
      else
        format.html {render action: "new" }
      end
    end
  end

end
