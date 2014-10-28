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
#  description  :text
#  available    :integer
#  reserved     :integer
#  solicited    :integer
#

class Implemento < ActiveRecord::Base
  belongs_to :solicitud

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
