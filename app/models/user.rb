class User < ApplicationRecord
  has_secure_password

  has_many :appointments
  has_many :doctors, through: :appointments
  validates :username, uniqueness: true, presence: true, length: { minimum: 6, maximum: 10 }
  validates :password, presence: true, length: { minimum: 6 }

  def self.from_token_request(request)
    username = request.params['auth'] && request.params['auth']['username']
    find_by username: username
  end
end
