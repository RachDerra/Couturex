class Comment < ApplicationRecord
  belongs_to :client
  belongs_to :order
  validates :content, presence: true
end
