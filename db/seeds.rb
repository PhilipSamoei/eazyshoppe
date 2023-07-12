require 'faker'

# Generate 10 fake dealers
10.times do
  dealer = Dealer.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    contact: Faker::PhoneNumber.phone_number
  )
 
end
puts "Created dealer "
# Generate 10 fake customers
10.times do
    customer = Customer.create(
      name: Faker::Name.name,
      address: Faker::Address.full_address,
      contact: Faker::PhoneNumber.phone_number
    )
    
  end
  puts "Created customer "
  # Generate 20 fake watches
  20.times do
    watch = Watch.create(
      name: Faker::Commerce.product_name,
      brand: Faker::Company.name,
      price: Faker::Commerce.price(range: 50..500)
    )
    
  end
  puts "Created watch "
  puts " seeding completed"

