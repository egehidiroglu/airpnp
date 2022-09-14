require 'open-uri'
bathrooms = %w[https://www.thespruce.com/thmb/qkmtQZFjNVUysd60GF49V7hag0A=/2048x1152/smart/filters:no_upscale()/fancy-bathroom-ideas-4325947-hero-4777bf14fe2b447b86a21e8a64194c29.jpg
  https://static1.squarespace.com/static/5ad60216da02bcd61379bf06/t/5b2b01c470a6ad5f45743410/1529545177087/PART3DEMISE
  https://cdn.vox-cdn.com/thumbor/5Pb64L7wo29KCJUmmhRTkdGD1cA=/0x0:3024x2016/1200x800/filters:focal(1271x767:1753x1249)/cdn.vox-cdn.com/uploads/chorus_image/image/65895351/12_2014ba_bath_0505_oldhouse_0310.7.jpg
  https://www.build-review.com/wp-content/uploads/2021/02/modern-bathroom-2.jpg
  https://usagainstthehouse.files.wordpress.com/2018/08/img_1985-1.jpg?w=1100
  https://cdn.mos.cms.futurecdn.net/urnQmjBrp6U2nnAqzzf2gb.jpg
  https://www.mydomaine.com/thmb/ak1nhpTFDwZI1WnEly6uv-drubI=/4096x2734/filters:no_upscale():max_bytes(150000):strip_icc()/unnamed-2-cfd97c57375745ceaa0bfa89c07d1e8b.jpg
  https://i.insider.com/5ea885b4e61f344041672da9?width=700
]
users = %w[https://assets.teenvogue.com/photos/62485a6e6f883de6edfb2e9b/1:1/w_2995,h_2995,c_limit/GettyImages-1340003502.jpeg
  https://upload.wikimedia.org/wikipedia/en/thumb/d/de/Barney_Gumble.png/220px-Barney_Gumble.png
  https://upload.wikimedia.org/wikipedia/en/3/33/Elaine-benes-3707.jpg
  https://www.biography.com/.image/t_share/MTgxMDEyMDQ4NzE5NjUxOTI4/gettyimages-471835002.jpg
  https://assets.mycast.io/actor_images/actor-harry-dunne-279020_small.jpg?1633201684
  https://cdn.vox-cdn.com/thumbor/nyfeTpnaEB6BFBhFlG1k7dvWBFE=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20077872/star_jeffree.jpg
  https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY3MDUxMjkzMjI1OTIwMTcz/brad-pitt-attends-the-premiere-of-20th-century-foxs--square.jpg
  https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/MichaelScott.png/220px-MichaelScott.png
]
emails = %w[megan@fox.com
  barney@gumble.com
  elaine@bennis.com
  hussain@bolt.com
  harry@dunn.com
  brad@pitt.com
  jessica@alba.com
  michael@dundermifflin.com
  ]

first_names = %w[Megan
  Barney
  Elaine
  Hussain
  Harry
  Brad
  Jessica
  Michael
  ]

  last_names = %w[Fox
    Gumble
    Bennis
    Hussain
    Dunn
    Pitt
    Alba
    Scott
    ]

descriptions = ["Enjoy an amazing experince in my bathroom with me and M.G.Kelly",
"I haven't had a job in six years, hoping this will pay the bills!",
"I can spare a square, if you need",
"Can you beat my record?",
"Very well equipped washroom, you will have no issues",
"Luxurious bathroom, take your time!",
"Cleanest bathroom in Montreal!",
"People say I am the best boss and have the best bathroom",
]


address = ["5589 Rue Clark, Montreal",
  "304 Rue de Bellechasse, Montreal",
  "5286 St Andre St, Montreal",
  "1108 Rue Gilford, Montreal",
  "800 Duluth Ave E, Montreal",
  "4405 Rue Marquette, Montreal",
  "138 Atwater Ave, Montreal",
  "5417 Rue Saint-Urbain, Montreal",
]

# Seed users
puts "Destroying bathrooms..."
Bathroom.destroy_all
puts "Destroy users..."
User.destroy_all
puts "Creating users..."
counter = 0
users.each_with_index do |value, index|
  user = User.new(
    email: emails[counter],
    first_name: first_names[counter],
    last_name: last_names[counter],
    phone_number: Faker::PhoneNumber.phone_number,
    password: "123456"
    )
    file = URI.open(users[counter])
    user.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
    user.save!
    puts "Created user #{index}"

    puts "Creating bathrooms..."
    bathroom = Bathroom.new(
      price: rand(3..15),
      address: address[counter],
      description: descriptions[counter]
  )
    bathroom.user = user
    file = URI.open(bathrooms[counter])
    bathroom.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
    bathroom.save!
    puts "Created Bathroom #{index}"
    counter += 1
end

puts "Finished!"
