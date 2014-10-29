# == Schema Information
#
# Table name: solicituds
#
#  id              :integer          not null, primary key
#  comunidades     :text
#  created_at      :datetime
#  updated_at      :datetime
#  disciplina      :string(255)
#  sol_f_name      :string(255)
#  sol_s_name      :string(255)
#  sol_fl_name     :string(255)
#  sol_sl_name     :string(255)
#  sol_cui         :string(255)
#  sol_tel         :string(255)
#  sol_email       :string(255)
#  correlativo     :string(255)
#  no_gestion      :string(255)
#  departamento_id :integer
#  municipio_id    :integer
#

class Solicitud < ActiveRecord::Base
  # Please take note that solicitud was pluralized as solicituds, damn english pluralizers.
  has_and_belongs_to_many       :implemento
  has_many                      :beneficiarios
  belongs_to                    :departamento
  belongs_to                    :municipio
  accepts_nested_attributes_for :beneficiarios, :reject_if => :all_blank, :allow_destroy => true
  serialize :comunidades, Array

  validates :sol_f_name, :sol_s_name, :sol_fl_name, :sol_sl_name, :sol_cui, :sol_email, :sol_tel,
            :disciplina, presence: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.depto_search
    place = @solicitud.departamento.name
    depto = Departamento.where('name = ?', place)
    depto.id
  end


  def self.wtf
    "WTF"
  end

  def mtf
    "Yo MTF"
  end

end
