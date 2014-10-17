# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  resourcify

  # RELATIONS
  #belongs_to  :user
  has_many    :comments, dependent: :destroy

  # VALIDATIONS
  validates :title,   presence: true#, length: { minimum: 5 }
  validates :text,    presence: true

  #rails_admin do
  #  configure :article do
  #    label 'Author: '
  #  end
  #end
end
