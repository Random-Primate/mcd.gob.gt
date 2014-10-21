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

class Expediente < ActiveRecord::Base
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
