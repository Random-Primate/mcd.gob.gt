namespace :db do
  desc 'Fill database with sample data'
    task populate: :environment do
      #
      # Administrador
      #
      random_string = (0...8).map { (65 + rand(26)).chr }.join
      admin = User.create!(
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   avatar: "http://robohash.org/#{random_string}.png",
                   email: 'john@doe.com',
                   password: 'password',
                   password_confirmation: 'password')
      admin.toggle!(:admin)
      #
      # Users
      #
      20.times do |n|
        first_name = Faker::Name.first_name
        last_name = Faker::Name.last_name
        email = "example-#{n+1}@doe.com"
        password = 'password'
        User.create!(
                     first_name: first_name,
                     last_name: last_name,
                     email: email,
                     password: password,
                     password_confirmation: password)
      end
      #
      # Solicitantes
      #
      5.times do
        first_name  = Faker::Name.first_name
        second_name = Faker::Name.first_name
        first_last_name = Faker::Name.last_name
        second_last_name = Faker::Name.last_name
        # We can generate valid cui
        cui = 1_000_000_000_000 + Random.rand(10_000_000_000_000 - 1_000_000_000_000)
        tel = Faker::PhoneNumber.phone_number
        email = Faker::Internet.email
        Solicitante.create!(
          first_name: first_name,
          second_name: second_name,
          first_last_name: first_last_name,
          second_last_name: second_last_name,
          cui: cui,
          tel: tel,
          email: email)
      end
      #
      # Should do / Scoped Articles
      #
      #users = User.all#(limit: 6)
      #5.times do
      #  title = Faker::Lorem.words(2)
      #  content = Faker::Lorem.sentence(5)
      #  users.each { |user| user.articles.create!(title: title, content: content) }
      #end
      #
      # Should do / Scoped Comments
      #
      #users = User.all#(limit: 6)
      #5.times do
      #  title = Faker::Lorem.words(2)
      #  content = Faker::Lorem.sentence(5)
      #  users.each { |user| user.articles.create!(title: title, content: content) }
      #end
    end
end