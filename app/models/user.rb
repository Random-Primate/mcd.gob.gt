# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string(255)
#  locked_at              :datetime
#  created_at             :datetime
#  updated_at             :datetime
#  role                   :string(255)
#  admin                  :boolean          default(FALSE)
#  first_name             :string(255)
#  last_name              :string(255)
#  avatar                 :string(255)
#

class User < ActiveRecord::Base
  # Gem Integrations
  #   Rolify: Very simple Roles library without any authorization enforcement supporting scope
  #   on resource object.
  #   We can use before and after role associations methods as:
  #     rolify :before_add => :before_add_method
  #     def before_add_method(role)
  #       do something before it gets added
  #     end
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :omniauthable
         # :timeoutable, :confirmable,

  # :default_url => 'http://robohash.org/blast.png'

  # Carrierwave
  mount_uploader :avatar, AvatarUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  # Validations
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true

  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end

end
