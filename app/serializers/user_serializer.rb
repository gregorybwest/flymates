class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :is_business, :airport_id, :address, :hours_of_operation, :phone_number, :contact_radio, :service_fuel, :has_car, :service_facilities, :winter_services, :other_services, :average_rating
end
