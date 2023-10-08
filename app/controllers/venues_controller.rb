class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def new
    @venue=Venue.new
  end


  def create
    # params = params.with_indifferent_access
    @venue = Venue.new(name: params[:venue][:name], address: params[:venue][:address], capacity: params[:venue][:capacity], image: params[:venue][:image]  )
  
    if @venue.save
      redirect_to venues_path, notice: 'Venue was successfully created.'
    else
      render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update(venue_params)
      redirect_to venues_path, notice: "Venue was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    # byebug
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path, notice: 'Venue was successfully deleted.'
  end

  private 

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity, :image)
  end

end
