# == Schema Information
#
# Table name: expedientes
#
#  id          :integer          not null, primary key
#  num_gestion :string(255)
#  num_exp     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Expediente, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
