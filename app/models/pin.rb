class Pin < ApplicationRecord
    validates :title, :url, :user_id, :image, presence: true

    belongs_to :user
    
    has_one_attached :image
end
