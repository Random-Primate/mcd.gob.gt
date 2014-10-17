class Departamento < ActiveRecord::Base
  has_many :municipios
end
