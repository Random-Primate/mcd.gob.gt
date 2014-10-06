# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  title       :string(255)      not null
#  description :text             not null
#  the_role    :json             not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
end
