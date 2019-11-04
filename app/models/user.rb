class User < ApplicationRecord
    has_secure_password
    has_many :tasks
    has_many :assignments, through: :tasks


  validates :email, :username, :password, presence: true
  validates :email, uniqueness: true

  def self.find_or_create_by_omniauth(auth_hash)

    self.where(email: auth_hash['info']['email']).first_or_create do |user|
      user.password = SecureRandom.hex
      user.username = auth_hash['info']['name']
    end

  end

end