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

require 'rails_helper'

RSpec.describe Solicitud, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
