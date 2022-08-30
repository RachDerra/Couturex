class Client < ApplicationRecord
    validates :name, presence: true
    enum genre: { Homme:1,Femme:2 }
    belongs_to :user 
    has_many :orders, dependent: :destroy
    has_many :comments, dependent: :destroy
    mount_uploader :image, ImageUploader
end
