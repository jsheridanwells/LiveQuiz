# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add myself
User.create(
    email: 'jsheridanwells@gmail.com',
    first_name: 'jeremy',
    last_name: 'sheridan wells',
    picture: 'https://lh3.googleusercontent.com/-wgQ58ZOudpw/AAAAAAAAAAI/AAAAAAAAAts/ah3NG7-kPOs/photo.jpg',
    provider: 'google_oauth2',
    uid: '107159026262484848191'
  )

# create 100 users
100.times do
  first_name = Faker::Name.unique.first_name
  last_name = Faker::Name.unique.first_name
  email = "#{first_name}@example.com"
  picture = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/1200px-Albert_Einstein_Head.jpg'
  provider = 'google_oauth2'
  uid = 99999

  User.create(
    email: email,
    first_name: first_name,
    last_name: last_name,
    picture: picture,
    provider: provider,
    uid: uid
    )
end

# # create 10 presentations for me
10.times do
  user_id = 1
  title = Faker::ChuckNorris.fact

  Presentation.create(
      user_id: user_id,
      title: title
    )
end

# create 1000 presentations
1000.times do
  user_id = rand(2..100)
  title = Faker::ChuckNorris.fact

  Presentation.create(
      user_id: user_id,
      title: title
    )
end
