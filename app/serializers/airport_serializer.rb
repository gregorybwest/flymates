class AirportSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :zip_code, :city, :address

  has_many :users
end
