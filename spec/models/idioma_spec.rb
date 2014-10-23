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

require 'rails_helper'

RSpec.describe Idioma, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
