# == Schema Information
#
# Table name: beneficiarios
#
#  id                :integer          not null, primary key
#  cui               :string(255)
#  first_name        :string(255)
#  second_first_name :string(255)
#  first_last_name   :string(255)
#  second_last_name  :string(255)
#  menor             :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  solicitud_id      :integer
#  departamento      :string(255)
#  municipio         :string(255)
#  pueblo            :string(255)
#  idioma            :string(255)
#

class Beneficiario < ActiveRecord::Base
  validates :cui, :first_name, :first_last_name, :departamento, :municipio, presence: true
  belongs_to :solicitud

  #before_save bool_turn(:menor)

  #def bool_turn(menor)
  #  if menor == 'Menor de Edad'
  #    menor = 0
  #  else
  #    menor = 1
  #  end
  #end
end
