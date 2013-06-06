FactoryGirl.define do
  factory :user, :aliases => [:commenter] do
    sequence(:username) { |n| "Me#{n}"}
    password            "1234"
    sequence(:email)    { "#{username}@#{username}.com" } 
  end

  factory :question do
    title "Moving to the bay"
    description "Blah blah blah"
    author
  end

  factory :answer do
    description { Faker::Lorem.paragraph }
    # answerable_type
    commenter
  end
end
