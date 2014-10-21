# == Schema Information
#
# Table name: municipios
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  departamento_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  solicitud_id    :integer
#

class Municipio < ActiveRecord::Base
  belongs_to :departamento
  belongs_to :solicitud

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
