class AirportsController < ApplicationController

  def index
    airports = Airport.all
    render json: airports
  end

  def create
    airport = Airport.new(
      name: params[:name],
      code: params[:code],
      zip_code: params[:zip_code],
      city: params[:city],
      address: params[:address]
    )
    if airport.save
      render json: { message: "Airport successfully added" }, status: :created
    else
      render json: { errors: airport.errors.full_messages }, status: :bad_request
    end   
  end

  def show
    airport = Airport.find(params[:id])
    render json: airport
  end

  def update
    airport = Airport.find(params[:id])
    airport.name = params[:name] || airport.name
    airport.code = params[:code] || airport.code
    airport.zip_code = params[:zip_code] || airport.zip_code
    airport.city = params[:city] || airport.city
    airport.address = params[:address] || airport.address
    if airport.save
      render json: airport
    else
      render json: {errors: airport.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    airport = Airport.find(params[:id])
    airport.delete
    render json: {message: "Airport successfully destroyed"}
  end


end
