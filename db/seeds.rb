# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

skills = ['glass blowing', 'painting', 'music composition', 'sculpting', 'gardening', 'cooking', 'farming', 'sewing', 'media presentation', 'singing']

skills.each do |skill|
  Skill.create!(
    skill_name: skill
  )
end

users = JSON.parse(File.read("#{Rails.root}/db/randomuser.me.json"))
x = 0
users.each do |user|
  email = user['email']
  password = 'foobar'
  password_confirmation = 'foobar'
  first_name = user['name']['first'].titleize
  last_name = user['name']['last'].titleize
  skill = Random.rand(10) + 1
  x_pos = Random.rand(950) + 25
  y_pos = Random.rand(450) + 25
  image = user['picture']['medium']
  location = user['location']['street'] + ", " + user['location']['city'] + ", " + user['location']['state']
  dob = user['dob']
  phone = user['phone']

  User.create!(
    email: email,
    password: password,
    password_confirmation: password_confirmation,
    first_name: first_name,
    last_name: last_name,
    skill: Skill.find(skill).skill_name,
    image: image,
    x_pos: x_pos,
    y_pos: y_pos,
    location: location,
    dob: dob,
    phone: phone
  )
  x += 1
end

# 100.times do |u|
#   email = Faker::Name.first_name + '@example.com'
#   password = 'foobar'
#   password_confirmation = 'foobar'
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   skill = Random.rand(10) + 1
#   User.create!(
#     email: email,
#     password: password,
#     password_confirmation: password_confirmation,
#     first_name: first_name,
#     last_name: last_name,
#     skill: Skill.find(skill).skill_name,
#     x_pos: x_pos,
#     y_pos: y_pos
#   )
# end
10.times do |u|
  User.find(Random.rand(100)).requests.create!(
    skill: skills[Random.rand(10)]
  )
end