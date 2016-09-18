require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :loadouts
  has_many :game_modes

  validates :username, :email, :encrypted_password, presence: true

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def authenticate(text_password)
    self.password == text_password
  end

end
