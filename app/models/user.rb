
class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  # validates :first_name, :last_name, length: { maximum: 30 }
  # validates :location, length: { maximum: 50 }
  after_initialize :ensure_session_token, :parse_email

  attr_reader :password

  has_one_attached :photo
  has_many :boards
  has_many :pins
  has_many :boards_pins,
    through: :boards,
    source: :boards_pins

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest) == password
  end

  def reset_session_token!
    self.update!(session_token: generate_session_token)
    self.session_token
  end

  private
  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def parse_email
    self.username ||= self.email.split("@")[0]
  end

end
