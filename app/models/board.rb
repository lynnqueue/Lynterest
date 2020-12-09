
class Board < ApplicationRecord

  validates :title, presence: { message: "Don't forget to name your board!" }
  validates :user_id, presence: true

  belongs_to :user

  has_many :boards_pins,
    class_name: :BoardsPins,
    foreign_key: :board_id,
    dependent: :destroy
    
  has_many :pins,
    through: :boards_pins,
    source: :pin,
    dependent: :destroy

end
