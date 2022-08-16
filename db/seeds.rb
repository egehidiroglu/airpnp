#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
user = User.create!(email: "test@test.com", first_name: "Casey", last_name: "Tokarchuk", phone_number: "123456789", password: "password")

puts "Cleaning your bathrooms..."
Bathroom.destroy_all

puts "Building bathrooms..."

counter = 1
25.times do
  Bathroom.create!(price: rand(0..100),
  location: Faker::Nation.capital_city,
  description: Faker::TvShows::Seinfeld.quote,
  user: user)
  puts "Created Bathroom #{counter}"
  counter += 1
end
puts "Finsihed!"
