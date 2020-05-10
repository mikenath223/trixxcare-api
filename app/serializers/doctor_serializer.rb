# frozen_string_literal: true

class DoctorSerializer < ActiveModel::Serializer
  attributes :name, :image, :price, :details, :id, :location
end
