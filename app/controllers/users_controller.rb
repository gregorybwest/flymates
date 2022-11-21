class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      email: params[:email], 
      password: params[:password], 
      password_confirmation: params[:password_confirmation], 
      user_name: params[:user_name], 
      is_business: params[:is_business], 
      airport_id: params[:airport_id], 
      address: params[:address], 
      hours_of_operation: params[:hours_of_operation], 
      phone_number: params[:phone_number], 
      contact_radio: params[:contact_radio], 
      service_fuel: params[:service_fuel], 
      has_car: params[:has_car], 
      service_facilities: params[:service_facilities], 
      winter_services: params[:winter_services], 
      other_services: params[:other_services], 
      rating: params[:rating]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.email = params[:email] || user.email
    user.user_name = params[:user_name] || user.user_name
    user.is_business = params[:is_business] || user.is_business
    user.airport_id = params[:airport_id] || user.airport_id
    user.address = params[:address] || user.address
    user.hours_of_operation = params[:hours_of_operation] || user.hours_of_operation
    user.phone_number = params[:phone_number] || user.phone_number
    user.contact_radio = params[:contact_radio] || user.contact_radio
    user.service_fuel = params[:service_fuel] || user.service_fuel
    user.has_car = params[:has_car] || user.has_car
    user.service_facilities = params[:service_facilities] || user.service_facilities
    user.winter_services = params[:winter_services] || user.winter_services
    user.other_services = params[:other_services] || user.other_services
    user.rating = params[:rating] || user.rating
    if user.save!
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User successfully destroyed"}
  end


end
