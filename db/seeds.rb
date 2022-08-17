require 'open-uri'
bathrooms = %w[https://www.thespruce.com/thmb/gAq4rWuYwX-hPukDxxDfksR7-2c=/1821x1366/smart/filters:no_upscale()/master-bathroom-design-ideas-4129362-hero-d896a889451341dfaa59c5b2beacf02d.jpg
  https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/martha-mulholland-standard-architecture-malibu-house-094-edit-1647617137.jpg?crop=1xw:1xh;center,top&resize=480:*
  https://images.adsttc.com/media/images/623a/ccba/3e4b/3174/1a00/0011/newsletter/FI.jpg?1648020659
  https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2018/6/29/0/FOD18_Natalie-Myers_Ladera-Heights_17.jpg.rend.hgtvcom.966.644.suffix/1530284627969.jpeg
  https://www.renoassistance.ca/wp-content/uploads/2022/02/bathroom-ideas-950x661.jpg]
users = %w[https://media.istockphoto.com/photos/portrait-of-mature-hispanic-man-picture-id805012064
  https://thumbs.dreamstime.com/b/portrait-man-making-funny-face-against-gray-background-154284891.jpg
  https://st.depositphotos.com/1905901/1880/i/600/depositphotos_18800379-stock-photo-asian-man-smiling.jpg
  https://www.aota.org/-/media/aota-images/career/confident-happy-businessman-in-office-career-success.jpg?cx=0.6&cy=0.45&cw=575&ch=575&hash=44365839F06B41A38B77154BEC7C9ACD
  https://hips.hearstapps.com/hmg-prod/images/prince-harry-duke-of-sussex-the-patron-of-the-rugby-news-photo-1645647152.jpg?crop=0.66667xw:1xh;center,top&resize=640:*
  https://media.istockphoto.com/photos/studio-portrait-of-a-27-year-old-man-with-a-beard-in-a-white-tshirt-picture-id1160007740]
emails = %w[hugo@toilet.com casey@toilet.com ege@toilet.com Adou@toilet.com Kieren@toilet.com stephane@toilet.com test@gmail.com]

# Seed users
puts "Destroying users..."
User.destroy_all
counter = 0
7.times do
    user = User.new(email: emails[counter],
    first_name: Faker::TvShows::Seinfeld.character,
    last_name: Faker::Name.last_name ,
    phone_number: Faker::PhoneNumber.phone_number,
    password: "123456")
    file = URI.open(users.sample)
    user.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
    user.save
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
  bathroom = Bathroom.new(price: rand(0..100),
  location: Faker::Address.street_address,
  description: Faker::Lorem.sentence(word_count: rand(5..10)),
  user: User.order('RANDOM()').first)
  file = URI.open(bathrooms.sample)
  bathroom.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
  bathroom.save
  puts "Created Bathroom #{counter}"
  counter += 1
end
puts "Finished!"
