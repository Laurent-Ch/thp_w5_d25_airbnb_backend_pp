User.destroy_all
City.destroy_all
Lodgment.destroy_all
Reservation.destroy_all

#r Users
20.times do
  User.create!(
    name:Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    description: Faker::Lorem.sentence(word_count: rand(50..60))
  )
  end
users = User.all

# Cities
10.times do
  City.create!(
    name: Faker::Address.city,
    # Nice, but Faker has a useful unique method
    # zip_code: "#{'%02d' % rand(01..97)}000"
    zip_code: Faker::Number.unique.number(digits: 5)
  )
end
cities = City.all

# Lodgment
50.times do
  Lodgment.create!(
    beds_nb: rand(1..8), 
    price: rand(60..400),
    description: Faker::Lorem.sentence(word_count: rand(50..60)),
    has_wifi: [true,false].sample(1),
    welcome_message: Faker::Lorem.sentence(word_count: rand(9..27)),
    city: cities[rand(0...cities.length)],
    owner: users[rand(0...users.length)]
  )
end
lodgments = Lodgment.all
