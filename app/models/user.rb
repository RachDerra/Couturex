class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :models, dependent: :destroy
  has_many :orders, dependent: :destroy
  mount_uploader :image, ImageUploader

  def self.guest
    find_or_create_by!(email: 'guest_user@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
  def self.guest_admin
    find_or_create_by!(email: 'guest_admin@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.admin =true
    end
  end
end
