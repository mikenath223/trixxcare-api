class Doctor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, :details, :image, :price, presence: true
end
