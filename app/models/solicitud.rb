# == Schema Information
#
# Table name: solicituds
#
#  id             :integer          not null, primary key
#  comunidades    :text
#  solicitante_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  departamento   :string(255)
#  municipio      :string(255)
#

class Solicitud < ActiveRecord::Base
  # Please take note that solicitud was pluralized as solicituds, damn english pluralizers.
  belongs_to :solicitante
  has_many :implementos
  #accepts_nested_attributes_for :solicitante
  #accepts_nested_attributes_for :implementos
  serialize :comunidades, Array

  #before_save :array_coms

  #def array_coms(coms)
  #  coms.to_a
  #end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
