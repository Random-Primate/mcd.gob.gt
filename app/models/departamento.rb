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
  has_many :municipios, dependent: :destroy
end
