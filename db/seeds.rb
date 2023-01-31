include FactoryBot::Syntax::Methods

# settings
Setting.destroy_all
Setting.create(name: Faker::Name.name, description: Faker::Lorem.paragraph(sentence_count: 4), address: Faker::Address.city + ', ' + Faker::Address.state, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone )

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

# projects
Project.destroy_all
Project.create(source_url: 'https://github.com/rails/rails', name: 'Ruby on Rails', description: 'Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.', image_url: 'ror.png')
create_list(:full_project, 5)

