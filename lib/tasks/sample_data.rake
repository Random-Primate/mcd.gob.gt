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
      # Create implemento array
      def implemento_array
        qty = rand(1..23)
        arr = Array.new
        while qty > 0 do
          arr.push(rand(1..23))
          qty -= 1
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
                  # Mayores de Edad
                  cui: rand(10000...20000), # Validate
                  # Menores de Edad
                  no_partida_nacimiento: 'No Partida',
                  folio_partida_nacimiento: 'Folio Partida',
                  libro_partida_nacimiento: 'Libro Partida'
              )
          )
          ctr -= 1
        end
        arr
      end

      10.times do |time|
        puts 'Solicitud No.' + (time + 1).to_s
        comunidades = iter_coms(5)
        correlativo = rand(10000...100000) #Set logical
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
          correlativo: correlativo,
          entidad: codigo_entidad,
          # Implementos
          implemento_ids: implemento_array,
          # Add Beneficiarios
          beneficiarios: ben_array
        )
        puts 'Correlativo No. '    + sol.correlativo.to_s
        puts 'Beneficiarios: '   + sol.beneficiarios.count.to_s
        puts 'Implementos Qty: ' + sol.implemento.count.to_s
        puts 'Departamento: ' +   sol.departamento.name
        puts 'Municipio: '    +   sol.municipio.name
        puts '##################'
      end

      # Add Implementos
      Solicitud.all.each do |s|
        s.implemento.each do |i|
          i.solicited = rand(1..20)
          i.save!
        end
        s.save!
      end

    end
end