namespace :db do
  desc 'Fill database with sample data'
    task populate: :environment do
      random_string = (0...8).map { (65 + rand(26)).chr }.join
      admin = User.create!(
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   avatar: "http://robohash.org/#{random_string}.png",
                   email: 'john@doe.com',
                   password: 'password',
                   password_confirmation: 'password')
      admin.toggle!(:admin)
      20.times do |n|
        #name = Faker::Name.name
        email = "example-#{n+1}@doe.com"
        password = 'password'
        User.create!(
                     first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     email: email,
                     password: password,
                     password_confirmation: password)
      end
      7.times do
        title = Faker::Lorem.sentence(1)
        text = Faker::Lorem.paragraph(8)
        Article.create!(title: title, text: text)
      end
      #users = User.all#(limit: 6)
      #5.times do
      #  title = Faker::Lorem.words(2)
      #  content = Faker::Lorem.sentence(5)
      #  users.each { |user| user.articles.create!(title: title, content: content) }
      #end
    end
end