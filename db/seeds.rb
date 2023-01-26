include FactoryBot::Syntax::Methods

# settings
Setting.destroy_all
Setting.create(name: Faker::Name.name, description: Faker::Lorem.paragraph(sentence_count: 3), address: Faker::Address.city + ', ' + Faker::Address.state, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone )

# skills
skills = %w(Ruby\ on\ Rails\ 7 PostgreSQL Digital\ Ocean Heroku Redis APIs Microservices Salesforce Twilio Chargebee Terraform Ansible Fly.io AWS)

# experiences
Experience.destroy_all
(1..10).each do
  e = Experience.create(title: Faker::Job.title, name: Faker::Company.name, start_date: Date.today- 5.years, end_date: Date.today- 4.years, description: Faker::Lorem.paragraph(sentence_count: 13, supplemental: false), url: Faker::Internet.url)

  skill_count = rand(5) + 1
  (0..skill_count).each do
    e.skill_list.add(skills[rand(skills.length)])
    e.save
  end
end
