FactoryGirl.define do

  factory :wine do
    brand     Faker::Lorem.words(3).join(' ').capitalize
    producer  Faker::Company.name
    year      (1972..2013).to_a.sample
    style     ["Red", "White", "Sparkling"].sample
  end

  factory :review do 
    notes     Faker::Lorem.sentence
    reviewer  Faker::Name.name
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :admin_user do
    email
    password   'password123'
  end
  
  factory :event do
    date        {Date.current + rand(1..60).days}
    title       Faker::Lorem.sentence
    description Faker::Lorem.paragraph
  end
  
 end

