class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
    render :index
  end

  def show
    @instrument = Instrument.find_by(id: params[:id])
    render :show
  end

  def update
    @instrument = Instrument.find_by(id: params[:id])
    @instrument.update(
      brand: params[:brand] || @instrument.brand,
      model: params[:model] || @instrument.model,
      category: params[:category] || @instrument.category,
      year_invented: params[:year_invented] || @instrument.year_invented,
    )
    render :show
  end

  def create
    @instrument = Instrument.create(
      brand: params[:brand],
      model: params[:model],
      category: params[:category],
      year_invented: params[:year_invented]
    )
    render :show
  end

  def destroy
    @instrument = Instrument.find_by(id: params[:id])
    @instrument.destroy
    render json: {message: "Product deleted"}
  end
end
