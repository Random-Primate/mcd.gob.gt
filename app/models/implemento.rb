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

  # Searching algo
  def self.search(search)
    if search
      where('lower(name) LIKE ?', "%#{search}%")
    else
      all
    end
  end

  # Total solicited amount
  def total_solicited
    ctr = 0
    self.soliciteds.each do |s|
      ctr += s.amount
    end
    ctr
  end

  # Total reserved amount
  def total_reserved
    ctr = 0
    self.soliciteds.each do |s|
      if s.solicitud.reservado?
        ctr += s.amount
      end
    end
    ctr
  end

  # Total delivered amount
  def total_delivered
    ctr = 0
    self.soliciteds.each do |s|
      if s.solicitud.entregado?
        ctr += s.amount
      end
    end
    ctr
  end

  # Reduct from available amount
  def deduct
    ctr = 0
    self.soliciteds.each do |s|
      ctr += s.amount
      res = self.available - ctr
      if res >= 0
        if self.save
          flash[:notice] = 'Se han eliminado implementos.'
        else
          flash[:notice] = 'No se han eleiminado.'
        end
      end
    end
    ctr
  end

  # Appears in this amount of solicituds
  def appears_solicited_amount
    self.soliciteds.count
  end

end
