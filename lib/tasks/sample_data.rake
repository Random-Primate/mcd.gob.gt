namespace :db do

  desc 'Fill database with sample data'
    task populate: :environment do
      avatar = 'empty-user.png'
      #
      # Administrador
      #
      admin = User.create!(
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   avatar: avatar,
                   email: 'john@doe.com',
                   password: 'password',
                   password_confirmation: 'password')
      admin.toggle!(:admin)
      admin.add_role :admin
      #
      # Supervisor
      #
      supervisor = User.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          avatar: avatar,
          email: 'supervisor@doe.com',
          password: 'password',
          password_confirmation: 'password')
      supervisor.add_role :supervisor
      #
      # Implementacion
      #
      implementacion = User.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          avatar: avatar,
          email: 'implementacion@doe.com',
          password: 'password',
          password_confirmation: 'password')
      implementacion.add_role :implementacion
      #
      # Ventanilla
      #
      ventanilla = User.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          avatar: avatar,
          email: 'ventanilla@doe.com',
          password: 'password',
          password_confirmation: 'password')
      ventanilla.add_role :ventanilla
      #
      # Users
      #
      20.times do |n|
        first_name = Faker::Name.first_name
        last_name = Faker::Name.last_name
        email = "example-#{n+1}@doe.com"
        password = 'password'
        usr = User.create!(
                     first_name: first_name,
                     last_name: last_name,
                     avatar: avatar,
                     email: email,
                     password: password,
                     password_confirmation: password)
        usr.add_role :usuario
      end
      #
      # Solicitudes
      #
      # Creates amount of communities:
      def set_correlativo(sol)
        rand(10...100).to_s + sol.created_at.year.to_s[2..4] + rand(100...1000).to_s +
            sol.created_at.month.to_s + sol.created_at.day.to_s + rand(100...1000).to_s + sol.id.to_s
      end
      def iter_coms(amnt)
        ctr = amnt
        arr = Array.new
        while ctr > 0 do
          arr.push(Faker::Address.street_name)
          ctr -= 1
        end
        arr
      end
      # Create Beneficiario
      def ben_array
        ctr = rand(1..20)
        arr = Array.new
        while ctr > 0 do
          dep_id = rand(1..22)
          departamento = Departamento.find(dep_id)
          max = departamento.municipios.last.id
          min = departamento.municipios.first.id
          muni_id = rand(min..max)
          arr.push(
              Beneficiario.create(
                  first_name: Faker::Name.first_name,
                  second_first_name: Faker::Name.first_name,
                  first_last_name: Faker::Name.last_name,
                  second_last_name: Faker::Name.last_name,
                  departamento: departamento,
                  municipio: Municipio.find(muni_id),
                  pueblo: Pueblo.find(rand(1..6)),
                  idioma: Idioma.find(rand(1..27)),
                  entidad: '1300000002000',
                  birth_date: Faker::Date.between(60.years.ago, 5.years.ago),
                  # Mayores de Edad
                  cui: rand(10000...20000), # Validate
                  # Menores de Edad
                  no_partida_nacimiento: rand(1000...10000).to_s,
                  folio_partida_nacimiento: rand(1000...10000).to_s,
                  libro_partida_nacimiento: rand(1000...10000).to_s
              )
          )
          ctr -= 1
        end
        arr
      end

      10.times do |time|
        puts 'Solicitud No.' + (time + 1).to_s
        comunidades = iter_coms(5)
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
        codigo_entidad = '1300000002000'

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
          entidad: codigo_entidad,
          beneficiarios: ben_array
        )
        sol.correlativo = set_correlativo(sol)
        sol.save
        puts 'Correlativo No. '    + sol.correlativo.to_s
        puts 'Beneficiarios: '   + sol.beneficiarios.count.to_s
        puts 'Departamento: ' +   sol.departamento.name
        puts 'Municipio: '    +   sol.municipio.name
        puts '##################'
      end

      def soliciteds_array
        Solicitud.all.each do |s|
          qty = rand(1..20)
          while qty > 0 do
            s.soliciteds.new(implemento_id: rand(1..23), amount: rand(1..20))
            qty -= 1
          end
          s.save!
        end
      end

      # Implementos
      soliciteds_array

    end

end