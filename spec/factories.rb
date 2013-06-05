FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "Me#{n}"}
    password            "1234"
    sequence(:email)    { "#{username}@#{username}.com" }
    admin false


    factory :admin do
      admin true
    end
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
end

