module Api::V1
  class DoctorsController < ApplicationController
    before_action :authenticate_user, only: %i[show]

    def index
      @doctors = Doctor.all
      json_response(@doctors)
    end

    def show
      @doctor = Doctor.find(params[:id])
      json_response(@doctor)
    end
  end
end
