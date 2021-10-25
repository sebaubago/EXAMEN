class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
    @apartment = Apartment.where(building_id: @building.id)
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
      if @building.save
        redirect_to(buildings_path)
      else
        render("new")
      end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    if @building.update(building_params)
      redirect_to(buildings_path)
    else
      render("Edit")
    end
  end

  def delete
    @building = Building.find(params[:id])
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to(buildings_path)
  end

  private
  def building_params
    params.require(:building).permit(:nombre_edificio, :direccion, :ciudad)
  end
end
