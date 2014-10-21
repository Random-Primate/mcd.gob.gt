# == Schema Information
#
# Table name: solicitantes
#
#  id               :integer          not null, primary key
#  first_name       :string(255)
#  second_name      :string(255)
#  first_last_name  :string(255)
#  second_last_name :string(255)
#  cui              :string(255)
#  tel              :string(255)
#  email            :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

require 'rails_helper'

RSpec.describe Solicitante, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
