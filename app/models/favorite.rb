# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :house
  belongs_to :user

  validates :user_id, uniqueness: { scope: :house_id, message: 'Apartment already added to favorites!' }
end
