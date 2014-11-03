# == Schema Information
#
# Table name: soliciteds
#
#  id            :integer          not null, primary key
#  amount        :integer
#  solicitud_id  :integer
#  implemento_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'rails_helper'

RSpec.describe Solicited, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
