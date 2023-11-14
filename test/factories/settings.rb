FactoryBot.define do
  factory :setting do
    name { Faker::Name.name }
    source_headline { "Tools I used in this application." }
    status { "available" }
    home_headline { "I'm Jack. I live in Tampa where I'm a Ruby on Rails full-stack developer."}
    projects_headline { "Open-source projects I've built." }

  end
end
