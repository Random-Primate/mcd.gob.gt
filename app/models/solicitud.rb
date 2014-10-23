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
#  sol_f_name     :string(255)
#  sol_s_name     :string(255)
#  sol_fl_name    :string(255)
#  sol_sl_name    :string(255)
#  sol_cui        :string(255)
#  sol_tel        :string(255)
#  sol_email      :string(255)
#

class Solicitud < ActiveRecord::Base
  # Please take note that solicitud was pluralized as solicituds, damn english pluralizers.
  has_many :implementos
  has_many :beneficiarios
  accepts_nested_attributes_for :beneficiarios, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :implementos,   :reject_if => :all_blank, :allow_destroy => true
  serialize :comunidades, Array

  validates :sol_f_name, :sol_s_name, :sol_fl_name, :sol_sl_name, :sol_cui, :sol_email, :sol_tel,
            :departamento, :municipio, :disciplina, presence: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
