# frozen_string_literal: true

# db/seeds.rb
require 'faker'

# Clear existing data
Restaurant.destroy_all

# Define categories
categories = %w[chinese italian japanese french belgian]

# Create restaurants
25.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: rand(1_111_111_111 - 9_999_999_999),
    category: categories.sample
  )
  puts "Created #{restaurant.name}"
end

puts 'Finished seeding!'
