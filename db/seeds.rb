require 'open-uri'
bathrooms = %w[https://www.thespruce.com/thmb/qkmtQZFjNVUysd60GF49V7hag0A=/2048x1152/smart/filters:no_upscale()/fancy-bathroom-ideas-4325947-hero-4777bf14fe2b447b86a21e8a64194c29.jpg
  https://static1.squarespace.com/static/5ad60216da02bcd61379bf06/t/5b2b01c470a6ad5f45743410/1529545177087/PART3DEMISE
  https://cdn.vox-cdn.com/thumbor/5Pb64L7wo29KCJUmmhRTkdGD1cA=/0x0:3024x2016/1200x800/filters:focal(1271x767:1753x1249)/cdn.vox-cdn.com/uploads/chorus_image/image/65895351/12_2014ba_bath_0505_oldhouse_0310.7.jpg
  https://www.build-review.com/wp-content/uploads/2021/02/modern-bathroom-2.jpg
  https://usagainstthehouse.files.wordpress.com/2018/08/img_1985-1.jpg?w=1100
  https://nypost.com/wp-content/uploads/sites/2/2022/01/Rusty-toliet_.jpg?quality=75&strip=all
  https://cdn.mos.cms.futurecdn.net/urnQmjBrp6U2nnAqzzf2gb.jpg
  https://www.mydomaine.com/thmb/ak1nhpTFDwZI1WnEly6uv-drubI=/4096x2734/filters:no_upscale():max_bytes(150000):strip_icc()/unnamed-2-cfd97c57375745ceaa0bfa89c07d1e8b.jpg
  https://cdn.vox-cdn.com/thumbor/vpKcH3hmABka8IHeWNheA7UFiGs=/0x0:3600x2400/1200x800/filters:focal(1512x912:2088x1488)/cdn.vox-cdn.com/uploads/chorus_image/image/71160072/Web_ConcordCape_01102022JK_0373.0.jpg
  https://do5nkkzntcenb.cloudfront.net/Project/Sites/Lixil/shared/HERO-Image-With-Page-Title/AS/Category/Bathroom/bathroom-collections/modern-bathroom-collections/B-Studio_S_Bath_Collection.jpg?h=450&la=en-CA&w=1500
  https://17tsfx1l50ce12z9pg3v60nc-wpengine.netdna-ssl.com/wp-content/uploads/2018/03/condos-08.jpg
  https://barfblog.com/wp-content/uploads/2013/07/DSC05623.jpg
  https://www.mydomaine.com/thmb/mw4WKbMELIB5DAThbNICjrW2V_E=/1682x938/filters:fill(auto,1)/marieflanigangrayandwhitebathroom3-5fb032bda43f4a5cad1ffcc43de105ef.jpg
  https://cdn.nar.realtor/sites/default/files/sss_bathroom_mirror2.jpg
  https://assets.architecturaldigest.in/photos/60084b61eebcfd50ede87c2e/16:9/w_2560%2Cc_limit/Ahmedabad-bungalow-HPA-European-design-4-1366x768.jpg
  https://i2-prod.mylondon.news/news/property/article22592581.ece/ALTERNATES/s1200d/54267_DAN210673_IMG_06_0000jpeg.jpg
  https://www.designlinesmagazine.com/cms/media/2021/02/DL1_2021_Lookbook_AKB1.jpg
  https://www.bankrate.com/2022/05/25144854/modern-bathroom-2.jpg?auto=webp&optimize=high&crop=16:9
  https://collabconstruction.com/wp-content/uploads/2019/05/Bath-C.jpg
  https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2017/07/03/LocalLiving/Images/SCWInteriors_DenneyBungalow17B.jpg?t=20170517
  https://i.pinimg.com/originals/6d/8c/86/6d8c863843e4219021b169f964baa114.jpg
  https://rdcnewscdn.realtor.com/wp-content/uploads/2022/06/bathroom-wishlist-despite-expert-design-advice.jpg
  https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/bathroom-paintcolors-loftspacelead.jpg
  https://wetstyle.ca/wp-content/uploads/2019/09/Frame_Linea_Coffee_Bean-057_DxO_FLAT-1700x950.jpg]
users = %w[https://assets.teenvogue.com/photos/62485a6e6f883de6edfb2e9b/1:1/w_2995,h_2995,c_limit/GettyImages-1340003502.jpeg
  https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTE1ODA0OTcxNjIzMzUxODIx/queen-elizabeth-ii-9286165-1-402.jpg
  https://www.biography.com/.image/t_share/MTc5ODc5NjY5ODU0NjQzMzIy/gettyimages-3091504.jpg
  https://www.biography.com/.image/t_share/MTgxMDEyMDQ4NzE5NjUxOTI4/gettyimages-471835002.jpg
  https://cdn.vox-cdn.com/thumbor/nyfeTpnaEB6BFBhFlG1k7dvWBFE=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20077872/star_jeffree.jpg
  https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY3MDUxMjkzMjI1OTIwMTcz/brad-pitt-attends-the-premiere-of-20th-century-foxs--square.jpg
  https://www.instyle.com/thmb/_-x4lueIVPGZi4b8Q5-4g52TooI=/1521x1521/smart/filters:no_upscale():focal(713x555:715x557)/Jessica-Alba-Lead-9d945b2f645a439aaf6563703122348b.jpg
  https://i1.sndcdn.com/avatars-000274024141-twd769-t500x500.jpg
  https://assets.teenvogue.com/photos/564f969c016eb9ab3c7a406a/1:1/w_2891,h_2891,c_limit/heroines-00.jpg
  https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY2MzU1NDM3Mzg4NTcyMzM0/stephen-hawking-on-october-10-1979-in-princeton-new-jersey-photo-by-santi-visalligetty-images.jpg
  https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY2MzMwODQxOTg5OTE2MzM0/gandhi-spiritual-leader-leading-the-salt-march-in-protest-against-the-government-monopoly-on-salt-production-photo-by-central-pressgetty-images.jpg
  https://static.wikia.nocookie.net/theoffice/images/b/be/Character_-_MichaelScott.PNG/revision/latest/top-crop/width/360/height/360?cb=20200413224550
  https://www.moma.org/d/assets/W1siZiIsIjIwMTYvMDUvMjcvM3c4dzNhazkwdV8xMzY0XzExNjkwOV9kYWxpX2Nyb3AuanBnIl0sWyJwIiwiY29udmVydCIsIi1xdWFsaXR5IDkwIC1yZXNpemUgNTEyeDUxMlx1MDAzZSJdXQ/1364_116909_dali_crop.jpg?sha=caa9e56daed6ed5b
  https://www.liveabout.com/thmb/dm1t5fQYEAQLYanUjy3tuZflpI4=/1040x1040/smart/filters:no_upscale()/EP2-IA-60435_R_8x10-56a83bea3df78cf7729d314a.jpg
  https://news-ca.churchofjesuschrist.org/media/400x400/jesuschristredrobe_large.jpg
  https://imgs.smoothradio.com/images/224840?width=2480&crop=1_1&signature=coh17sFPwlsyi0gj9FdZWvlLMFQ=
  https://static.wikia.nocookie.net/killbill/images/3/39/The_Bride.jpg/revision/latest?cb=20130124180255
  https://i.pinimg.com/564x/65/74/c6/6574c6439f3598580cdf7ee36e17ef35--transformers-optimus-prime-michael-okeefe.jpg
  https://www.neh.gov/sites/default/files/2018-07/martin-scorsese_0.jpg
  https://www.biography.com/.image/t_share/MTgxMDg1MDI3MTkzMzMzMDk2/gettyimages-1127409044.jpg
  https://www.biography.com/.image/t_share/MTU0MTU0MTc3NzkzMTA3MzU1/beyonce-attends-tidal-x-1015-on-october-15-2016-in-new-york-city-photo-by-theo-wargogetty-images-for-tidal-sqaure.jpg
  https://www.biography.com/.image/t_share/MTQ3NTI2NTg2OTE1MTA0MjM4/kenrick_lamar_photo_by_jason_merritt_getty_images_entertainment_getty_476933160.jpg
  https://www.biography.com/.image/t_share/MTY2NzAyMDMwMjQzNTA1NTA0/donald_trump_photo_michael_stewartwireimage_gettyimages-169093538jpg.jpg
  https://www.biography.com/.image/t_share/MTU0Mjk3OTY4NDY2MzM5MTgy/rupaul-enters-the-late-show-with-stephen-colbert-taping-at-the-ed-sullivan-theater-on-june-23-2016-in-new-york-city-photo-by-ray-tamarragc-images-square.jpg]
emails = %w[megan@fox.com
  queen@elizabeth.com
  albert@einstein.com
  hussain@bolt.com
  jeffree@star.com
  brad@pitt.com
  jessica@alba.com
  edward@cullen.com
  katniss@everdeen.com
  stephen@hawking.com
  mohatma@ghandi.com
  michael@scott.com
  salvador@dali.com
  obiwan@kenobi.com
  jesus@christ.com
  michael@jackson.com
  beatrix@kiddo.com
  optimus@prime.com
  martin@scorsese.com
  lady@gaga.com
  beyonce@knowless.com
  kendrick@lamar.com
  donald@trump.com
  ru@paul.com]

first_names = %w[Megan
  Queen
  Albert
  Hussain
  Jeffree
  Brad
  Jessica
  Edward
  Katniss
  Stephen
  Mohatma
  Michael
  Salvador
  Obi-Wan
  Jesus
  Michael
  Beatrix
  Optimus
  Martin
  Lady
  Beyonce
  Kendrick
  Donald
  Ru]

descriptions = ["Enjoy an amazing experince in my bathroom with me and M.G.Kelly",
"Buckingham Palace's doors are open to you",
"Want to hear about relativity when you're relieving yourself?",
"Can you beat my record?",
"I'll do your make up too",
"Angeline made this bathroom for me and our 36 kids",
"Julien's biggest dream!",
"I will stare at you deeply when you do your thing...",
"My name is Katniss Everdeen. I am seventeen years old. My home is District 12. I was in the Hunger Games. I escaped. This is my bathroom",
"Disabled accessible",
"Relieve yourself as you were to die tomorrow",
"'You miss 100% of the poops you dont take. - Wayne Gretzky' - Michael Scott",
"Have no fear of perfect bathroom - you'll never reach it",
"Only a Sith doesn't wash their hands",
"If anyone slaps you on the right cheek, turn to them the other cheek also.",
"Hee-hee",
"Bill put me in a coma in this bathroom",
"Bathroom is the right of all sentient beings!",
"Browse through my collection while you're relieving yourself",
"Enjoy my poker bathroom",
"Jay-Z cheated on me in this bathroom",
"Sit down, take a poop!",
"I will build a wall around this bathroom!",
"If you can't love yourself, how the hell you're gonna take a poop"]

last_names = %w[Fox
  Elizabeth
  Einstein
  Hussain
  Star
  Pitt
  Alba
  Cullen
  Everdeen
  Hawking
  Ghandi
  Scott
  Dali
  Kenobi
  Christ
  Jackson
  Kiddo
  Prime
  Scorsese
  Gaga
  Knowless
  Lamar
  Trump
  Paul]

address = ["5589 Rue Clark, Montreal",
  "304 Rue de Bellechasse, Montreal",
  "5286 St Andre St, Montreal",
  "1108 Rue Gilford, Montreal",
  "800 Duluth Ave E, Montreal",
  "93 Maguire St, Montreal",
  "5371 Rue Clark, Montreal",
  "5417 Rue Saint-Urbain, Montreal",
  "92 Maguire St, Montreal",
  "77 St Viateur St. E, Montreal",
  "5730 St Dominique St, Montreal",
  "5849 Rue Clark, Montreal",
  "5710 Waverly St, Montreal",
  "5104 St Dominique St, Montreal",
  "121 Av. Clermont, Montreal",
  "5189 Esplanade Ave, Montreal",
  '5279 Waverly St, Montreal',
  "5615 Jeanne Mance St, Montreal",
  "5576 St Laurent Blvd, Montreal",
  "5239 St Dominique St, Montreal",
  "325 Rue Boucher, Montreal",
  "5297 Henri Julien Ave, Montreal",
  "237 Maguire St, Montreal",
  "5257 Casgrain Ave, Montreal"
]

puts "Cleaning your bathrooms..."
Bathroom.destroy_all
puts "Building bathrooms..."

# Seed users
puts "Destroying bathrooms..."
Bathroom.destroy_all
puts "Destroy users..."
User.destroy_all
counter = 0
24.times do
    user = User.new(email: emails[counter],
    first_name: first_names[counter],
    last_name: last_names[counter],
    phone_number: Faker::PhoneNumber.phone_number,
    password: "123456")
    file = URI.open(users[counter])
    user.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
    user.save
    puts "Created user #{counter + 1}"

    bathroom = Bathroom.new(price: rand(50..100),
    address: address[counter],
    description: descriptions[counter])
    bathroom.user = user
    file = URI.open(bathrooms[counter])
    bathroom.photo.attach(io: file, filename: "nes.jpg", content_type: "image/png")
    bathroom.save
    puts "Created Bathroom #{counter + 1}"
    counter += 1
end

puts "Finished!"
