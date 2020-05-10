# frozen_string_literal: true

class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id, :doctor_id, :location
end
