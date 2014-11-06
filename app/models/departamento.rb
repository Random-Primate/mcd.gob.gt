# == Schema Information
#
# Table name: departamentos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Departamento < ActiveRecord::Base
  has_many :municipios
  has_many :solicituds
  validates :name, presence: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
