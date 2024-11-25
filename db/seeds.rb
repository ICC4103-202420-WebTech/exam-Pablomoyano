# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

us1=User.create!(email:"Thefirstone@gmail.com", password: "THEFIRST1")
us2=User.create!(email:"CatolicaUc@gmail.com", password: "segundo2")

comp1= Compliment.create!(comp: "Tremendo corazon tienes para un pecho tan pequeño!", user: us1)
comp2= Compliment.create!(comp: "Nice gains, bro!", user: us1)
comp3= Compliment.create!(comp: "La luna no ilumina tanto como tu sonrisa", user: us2)
comp4= Compliment.create!(comp: "Necesito mas horas en el dia para verte aun mas", user: us2)