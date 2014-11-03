# == Schema Information
#
# Table name: implementos
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  piezas      :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  available   :integer
#  reserved    :integer
#  solicited   :integer
#

class Implemento < ActiveRecord::Base
  has_many :soliciteds
  has_many :solicituds, through: :soliciteds
  accepts_nested_attributes_for :soliciteds

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
