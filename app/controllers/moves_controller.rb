class MovesController < ApplicationController
  before_filter :require_login
  def index
    respond_to do |format|
      format.csv { render :text => MoveExporter.dump_csv }
    end  
  end

  def create
    @move = Move.new(params[:move])
    @move.compute_response!


    respond_to do | format|
     if @move.save!
       format.json { render json: @move, status: :created, location:@move }
     end
    end

  end

  def destroy
    @move = Move.find(params[:id])
    @move.destroy

    respond_to do |format|
      format.json { head :ok }
    end

  end
end
