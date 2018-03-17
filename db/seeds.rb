# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skills = ['glass blowing', 'painting', 'music composition', 'sculpting', 'gardening', 'cooking', 'farming', 'sewing', 'media presentation', 'singing']

skills.each do |skill|
  Skill.create!(
    skill_name: skill
  )
end

100.times do |u|
  email = Faker::Name.first_name + '@example.com'
  password = 'foobar'
  password_confirmation = 'foobar'
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  x_pos = Random.rand(1000) + 1
  y_pos = Random.rand(500) + 1
  skill = Random.rand(10) + 1
  User.create!(
    email: email,
    password: password,
    password_confirmation: password_confirmation,
    first_name: first_name,
    last_name: last_name,
    skill: Skill.find(skill).skill_name,
    x_pos: x_pos,
    y_pos: y_pos
  )
end
