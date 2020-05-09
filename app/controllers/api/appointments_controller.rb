# frozen_string_literal: true

class Api::AppointmentsController < ApplicationController
  before_action :authenticate_user
  # before_action :set_appoint, only: %i[update, destroy]

  def index
    @appointment = current_user.appointments
    json_response(@appointment)
  end

  def create
    @appointment = Appointment.create!(user: current_user, doctor_id: create_appoint_params[:doctor_id], date: create_appoint_params[:date], location: create_appoint_params[:location])
    json_response(@appointment)
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(update_appoint_params)
    head :no_content
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    head :no_content
  end

  private

  def create_appoint_params
    params.require(:appointment).permit(:date, :doctor_id, :location)
  end

  def update_appoint_params
    params.require(:appointment).permit(:date)
  end
end
