FactoryBot.define do
  factory :user do
    factory :admin do 
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
  end
end
