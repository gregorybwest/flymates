# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create({name: "Los Angeles International Airport", code: "LAX", zip_code: "90045", city: "Los Angeles", address: "1 World Way"})

Airport.create({name: "Portland International Airport", code: "PDX", zip_code: "97218", city: "Portland", address: "7000 NE Airport Way"})