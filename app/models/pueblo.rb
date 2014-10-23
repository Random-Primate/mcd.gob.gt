# == Schema Information
#
# Table name: pueblos
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  beneficiario_id :integer
#

class Pueblo < ActiveRecord::Base
  belongs_to :beneficiario
end
