require 'faker'
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
restaurant = Restaurant.new(
name: Faker::Company.name,
address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
phone_number: Faker::PhoneNumber.phone_number,
category: Restaurant::CATEGORY.sample
)
restaurant.save!
end

puts "Finished!"
