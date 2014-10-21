# == Schema Information
#
# Table name: implementos
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  piezas       :integer
#  created_at   :datetime
#  updated_at   :datetime
#  solicitud_id :integer
#

require 'rails_helper'

RSpec.describe Implemento, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
