namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "tester@example.com",
                         password: "tester1!",
                         password_confirmation: "tester1!",
                         admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutoiral.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end