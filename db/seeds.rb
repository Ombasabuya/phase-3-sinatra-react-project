puts "🌱 Seeding spices..."


  10.times do
    Landlord.create(
      name: Faker::Name.name(),
      phone_number: Faker::Number.number(digits: 10),
      email: Faker::Internet.email(),
      img_url: Faker::Avatar.image
    )
  end


Landlord.all.each do |landlord|
  10.times do
    Property.create(
      location: Faker::Address.city,
      property_type: "#{Faker::Number.between(from: 2, to: 4)} Bedrooms",
      property_name: Faker::Name.name(),
      property_size: "#{Faker::Number.between(from: 600, to: 2000)} sq ft",
      landlord_id: landlord.id
        
    )
  end
end

Property.all.each do |property|
  10.times do
    Tenant.create(
      name: Faker::Name.name(),
      email: Faker::Internet.email(),
      phone_number: Faker::Number.number(digits: 10),
      rent: Faker::Number.between(from: 10000, to: 60000),
      property_id: property.id

    )
  end
end





puts "✅ Done seeding!"
