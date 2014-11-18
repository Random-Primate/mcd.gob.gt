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
#  reserved      :integer
#

class Solicited < ActiveRecord::Base
  belongs_to :solicitud
  belongs_to :implemento
  accepts_nested_attributes_for :solicitud
  accepts_nested_attributes_for :implemento
end
