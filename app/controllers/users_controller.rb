class UsersController < ApplicationController
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
end
