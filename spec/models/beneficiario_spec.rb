# == Schema Information
#
# Table name: beneficiarios
#
#  id                :integer          not null, primary key
#  cui               :string(255)
#  first_name        :string(255)
#  second_first_name :string(255)
#  first_last_name   :string(255)
#  second_last_name  :string(255)
#  menor             :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  solicitud_id      :integer
#  departamento      :string(255)
#  municipio         :string(255)
#

require 'rails_helper'

RSpec.describe Beneficiario, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
