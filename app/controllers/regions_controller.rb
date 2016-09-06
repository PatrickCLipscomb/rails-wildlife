class RegionsController < ApplicationController
  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to animals_path
    else
      render :new
    end
  end
  def new
    @region = Region.new
    render :new
  end
  def edit
    @region = Region.find(params[:id])
    render :edit
  end
  def show
    @region = Region.find(params[:id])
    render :show
  end
  def update
    @region= Region.find(params[:id])
    if @region.update(region_params)
      redirect_to animals_path
    else
      render :edit
    end
  end
  def destroy
    @region = Region.find(params[:id])
    @region.sightings.each { |sighting| sighting.destroy }
    @region.destroy
    redirect_to animals_path
  end
  private
  def region_params
    params.require(:region).permit(:name)
  end
end
