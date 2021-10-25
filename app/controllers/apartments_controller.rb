class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
    # @buildings = Building.all
  end

  def new
    @apartment = Apartment.new
    @buildings = Building.all
  end

  def create
    @apartment = Apartment.new(apartment_params)
      if @apartment.save
        redirect_to(apartments_path)
      else
        render("new")
      end
    end
  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    if @apartment.update(apartment_params)
      redirect_to(apartment_path)
    else
      render("Edit")
    end
  end

  def delete
    @apartment = Apartment.find(params[:id])
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to(apartments_path)
  end

  private
  def apartment_params
    params.require(:apartment).permit(:numero_depto, :building_id)
  end
end
