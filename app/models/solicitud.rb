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
#  disciplina     :string(255)
#

class Solicitud < ActiveRecord::Base
  # Please take note that solicitud was pluralized as solicituds, damn english pluralizers.
  belongs_to  :solicitante
  has_many :implementos
  has_many :beneficiarios
  accepts_nested_attributes_for :beneficiarios, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :implementos,   :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :solicitante,   :reject_if => :all_blank, :allow_destroy => true
  serialize :comunidades, Array

  validates :solicitante_id, :departamento, :municipio, :disciplina, presence: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
