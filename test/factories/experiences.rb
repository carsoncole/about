FactoryBot.define do
  factory :experience do
    title { Faker::Job.title }
    name { Faker::Company.name }
    start_date { Date.today - 8.months }
    end_date { Date.today - 2.months }
  end
end
