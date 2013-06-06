FactoryGirl.define do
  factory :user, :aliases => [:commenter] do
    sequence(:username) { |n| "Me#{n}"}
    password            "1234"
    sequence(:email)    { "#{username}@#{username}.com" } 
  end

  factory :comment do
    title "Moving to the bay"
    description "Blah blah blah"
    author
  end

  factory :question do
    description "Blah blah blah"
    commenter
  end

  factory :answer do
    description { Faker::Lorem.paragraph }
    user
    question
  end
end

