emails = %w[hugo@toilet.com casey@toilet.com ege@toilet.com Adou@toilet.com Kieren@toilet.com stephane@toilet.com test@gmail.com]

# Seed users
puts "Destroying users..."
User.destroy_all
counter = 0
7.times do
    User.create!(email: emails[counter],
    first_name: Faker::TvShows::Seinfeld.character,
    last_name: Faker::Name.last_name ,
    phone_number: Faker::PhoneNumber.phone_number,
    password: Faker::Lorem.characters(number: 8))
    counter += 1
    puts "Created user #{counter + 1}"
end
puts "Finished generating users!"

# Seed bathrooms
puts "Cleaning your bathrooms..."
Bathroom.destroy_all
puts "Building bathrooms..."

counter = 1
25.times do
  Bathroom.create!(price: rand(0..100),
  location: Faker::Nation.capital_city,
  description: Faker::TvShows::Seinfeld.quote,
  user: User.order('RANDOM()').first)
  puts "Created Bathroom #{counter}"
  counter += 1
end
puts "Finished!"
