# frozen_string_literal: true

class Api::DoctorsController < ApplicationController
  before_action :authenticate_user

  def index
    @doctors = Doctor.all
    json_response(@doctors)
  end

  def show
    @doctor = Doctor.find(params[:id])
    json_response(@doctor)
  end
end
