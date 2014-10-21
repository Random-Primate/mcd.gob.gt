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

class Solicitante < ActiveRecord::Base
  has_many :solicituds
  after_save 'complete_name'

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def complete_name
    self.first_name + ' ' + self.second_name + ' ' + self.first_last_name + ' ' + self.second_last_name
  end
end
