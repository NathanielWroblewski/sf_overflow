# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 20.times do 
#   Answer.create( description: Faker::Lorem.sentence, answerable_type: 'Question', answerable_id: 1 + rand(20),
#     user_id: 1 + rand(20), question_id: 1 + rand(20))
# end

200.times do 
  Answer.create( description: Faker::Lorem.sentence, answerable_type: 'Answer', answerable_id: 1 + rand(20),
    user_id: 1 + rand(20), question_id: 1 + rand(20))
end

# 20.times do 
#   Question.create(title: Faker::Lorem.sentence, description: Faker::Lorem.sentence, user_id: 1 + rand(20))
# end

# 20.times do
# User.create(
# username: Faker::Name.name,
# email: Faker::Internet.email,
# password: 'password')
# end

# 20.times do
# Vote.create( votable_type: "Answer", user_id: 1 +rand(20), votable_id: 1 + rand(20),)
# end

# 20.times do
# Vote.create(
# votable_type: "Question",
# votable_id: 1 + rand(20),
# user_id: 1 +rand(20))
# end