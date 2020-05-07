# frozen_string_literal: true

class House < ApplicationRecord
  has_many :favorites
  has_many :users, -> { distinct }, through: :favorites
end
