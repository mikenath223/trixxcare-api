module Api::V1
  class Api::AppointmentsController < ApplicationController
    before_action :authenticate_user

    def index
      @appointment = current_user.appointments
      json_response(@appointment)
    end

    def create
      doctor_id = create_appoint_params[:doctor_id]
      date = create_appoint_params[:date]
      location = create_appoint_params[:location]
      doctor_name = create_appoint_params[:doctor_name]
      if current_user.appointments.none? { |k| k[:date] == date }
        @appointment = Appointment.create!(user: current_user,
                                           doctor_id: doctor_id, doctor_name: doctor_name, date: date, location: location)
        head :no_content
      else
        json_response("message": "Appointment date and time already exists!")
      end
    end

    def update
      @appointment = Appointment.find(params[:id])
      @user = User.find(current_user.id)
      if @user.id == @appointment.user_id
        @appointment.update(update_appoint_params)
        head :no_content
      else
        json_response("message": "Not authorized to perform the above action!")
      end
    end

    def destroy
      @appointment = Appointment.find(params[:id])
      @user = User.find(current_user.id)
      if @user.id == @appointment.user_id
        @appointment.destroy
        head :no_content
      else
        json_response("message": "Not authorized to perform the above action!")
      end
    end

    private

    def create_appoint_params
      params.permit(:date, :doctor_id, :doctor_name, :location)
    end

    def update_appoint_params
      params.permit(:date)
    end
  end
end
