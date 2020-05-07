# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
