# == Schema Information
#
# Table name: municipios
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  departamento_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Municipio < ActiveRecord::Base
  belongs_to :departamento
end
