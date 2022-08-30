class Order < ApplicationRecord
  enum etat_command: { notstarted:1,inprogress:2,completed:3 }
  enum priority: { high:1,medium:2,low:3 }
  enum etat_facture: { Soldé:1,"Non soldé":2 }
  belongs_to :user
  belongs_to :client
  belongs_to :model
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  def badge_color
    case etat_command
    when 'notstarted'   
        'secondary'
    when 'inprogress'  
        'info'
    when 'completed'
        'success'
    end   
end
end
