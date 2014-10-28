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
  has_and_belongs_to_many :solicituds

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
