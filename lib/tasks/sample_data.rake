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
      # Solicitudes
      #
      # Creates amount of communities:
      def iter_coms(amnt)
        ctr = amnt
        arr = Array.new
        while ctr > 0 do
          arr.push(Faker::Address.street_name)
          ctr -= 1
        end
        arr
      end
      100.times do |time|
        puts 'Solicitud No.' + (time + 1).to_s
        comunidades = iter_coms(5)
        correlativo =rand(10000...100000)
        sol_f_name = Faker::Name.first_name
        sol_s_name = Faker::Name.first_name
        sol_fl_name = Faker::Name.last_name
        sol_sl_name = Faker::Name.last_name
        # We can generate valid cui
        sol_cui = 1_000_000_000_000 + Random.rand(10_000_000_000_000 - 1_000_000_000_000)
        sol_tel = Faker::PhoneNumber.phone_number
        sol_email = Faker::Internet.email
        # Must be from db list
        dep_id = rand(1..22)
        departamento = Departamento.find(dep_id)
        max = departamento.municipios.last.id
        min = departamento.municipios.first.id
        muni_id = rand(min..max)
        disciplina = Faker::Lorem.word
        # Implementos
        implementos = [Implemento.find(1), Implemento.find(2)]

        sol = Solicitud.create!(
          # Solicitante's details
          sol_f_name: sol_f_name,
          sol_s_name: sol_s_name,
          sol_fl_name: sol_fl_name,
          sol_sl_name: sol_sl_name,
          sol_cui: sol_cui,
          sol_tel: sol_tel,
          sol_email: sol_email,
          # General info
          departamento_id: dep_id,
          municipio_id: muni_id,
          disciplina: disciplina,
          comunidades: comunidades,
          correlativo: correlativo,
          # Implementos
          #implemento: implementos - look at has and belongs to many syntax
        )
        #puts 'Implementos: '  +   sol.implementos.first.name
        puts 'Departamento: ' +   sol.departamento.name
        puts 'Municipio: '    +   sol.municipio.name
        puts '##################'
      end

      # Add beneficiario

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