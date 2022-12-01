Airport.create({name: "Los Angeles International Airport", code: "LAX", zip_code: "90045", city: "Los Angeles", address: "1 World Way"})

Airport.create({name: "Portland International Airport", code: "PDX", zip_code: "97218", city: "Portland", address: "7000 NE Airport Way"})

Airport.create({name: "San Francisco International Airport", code: "SFO", zip_code: "94128", city: "San Francisco", address: "San Francisco, CA 94128"})

User.create({email: "veit@test.com", password: "password", password_confirmation: "password", user_name: "Veit Anders", is_business: false})

User.create({email: "greg@test.com", password: "password", password_confirmation: "password", user_name: "Greg West", is_business: false})

User.create({email: "atlanticaviationlax@test.com", password: "password", password_confirmation: "password", user_name: "Atlantic Aviation LAX", is_business: true, airport_id: 1, address: "6411 W Imperial Hwy, Los Angeles, CA 90045", hours_of_operation: "24 hours", phone_number: "(310) 258-9884", contact_radio: "unknown", service_fuel: true, has_car: true, service_facilities: true, winter_services: true, other_services: true, rating: 0})

User.create({email: "atlanticaviationpdx@test.com", password: "password", password_confirmation: "password", user_name: "Atlantic Aviation PDX", is_business: true, airport_id: 2, address: "8089 NE Airport Way, Portland, OR 97218", hours_of_operation: "24 hours", phone_number: "(503) 331-4220", contact_radio: "unknown", service_fuel: true, has_car: true, service_facilities: true, winter_services: true, other_services: true, rating: 0})

Review.create({user_id: 1, business_id: 3, body: "Great service, friendly staff!", rating: 5})

Review.create({user_id: 2, business_id: 3, body: "Very professional staff, well maintained!", rating: 4})

Review.create({user_id: 2, business_id: 4, body: "Good coordiation team to work with.", rating: 5})
