FactoryGirl.define do
  factory :user do
    username "Me"
    password "1234"
    email    "email@email.com"
    admin false
  end

   factory :comment do
    title "Moving to the bay"
    description "Blah blah blah"
    user
  end

   factory :question do
    name "Foobar question"
    description "Blah blah blah"
    user
  end
end

