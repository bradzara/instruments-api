class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
    render :index
  end

  def show
    @instrument = Instrument.find_by(id: params[:id])
    render :show
  end
end
