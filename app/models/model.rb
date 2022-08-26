class Model < ApplicationRecord
    validates :name, presence: true
    belongs_to :user 
    belongs_to :category
    has_many :orders, dependent: :destroy
    mount_uploader :image, ImageUploader
end
