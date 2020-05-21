class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :location, :doctor_name, :date, presence: true
end
