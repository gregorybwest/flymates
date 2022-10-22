# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create({name: "Los Angeles International Airport", code: "LAX", zip_code: "90045", city: "Los Angeles", address: "1 World Way"})

Airport.create({name: "Portland International Airport", code: "PDX", zip_code: "97218", city: "Portland", address: "7000 NE Airport Way"})

User.create({email: "veit@test.com", password_digest: "password", user_name: "Veit Anders", is_business: false})

User.create({email: "greg@test.com", password_digest: "password", user_name: "Greg West", is_business: false})

User.create({email: "atlanticaviationlax@test.com", password_digest: "password", user_name: "Atlantic Aviation LAX", is_business: true, airport_id: 1, address: "6411 W Imperial Hwy, Los Angeles, CA 90045", hours_of_operation: "24 hours", phone_number: "(310) 258-9884", contact_radio: "unknown", service_fuel: true, has_car: true, service_facilities: true, winter_services: true, other_services: true, rating: 0})

User.create({email: "atlanticaviationpdx@test.com", password_digest: "password", user_name: "Atlantic Aviation PDX", is_business: true, airport_id: 2, address: "8089 NE Airport Way, Portland, OR 97218", hours_of_operation: "24 hours", phone_number: "(503) 331-4220", contact_radio: "unknown", service_fuel: true, has_car: true, service_facilities: true, winter_services: true, other_services: true, rating: 0})

Comment.create({user_id: 1, business_id: 3, body: "Great service, friendly staff!", rating: 5})

Comment.create({user_id: 2, business_id: 3, body: "Very professional staff, well maintained!", rating: 4})

Comment.create({user_id: 2, business_id: 4, body: "Good coordiation team to work with.", rating: 5})
