FactoryBot.define do
  factory :project do
    name { Faker::Job.title }
    source_url { Faker::Internet.url }

    factory :full_project do
      description { Faker::Lorem.paragraph(sentence_count: 12)}
      working_url { Faker::Internet.url }
    end
  end
end
