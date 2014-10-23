# == Schema Information
#
# Table name: idiomas
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  beneficiario_id :integer
#

class Idioma < ActiveRecord::Base
  belongs_to :beneficiario
end
