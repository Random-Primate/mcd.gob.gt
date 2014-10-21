# == Schema Information
#
# Table name: departamentos
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  solicitud_id :integer
#

class Departamento < ActiveRecord::Base
  has_many :municipios
  belongs_to :solicitud

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
