class MovesController < ApplicationController

  def create
    @move = Move.new(params[:move])
    @move.compute_response!


    respond_to do | format|
     if @move.save!
       format.json { render json: @move, status: :created, location:@subject }
     end
    end

  end
end
