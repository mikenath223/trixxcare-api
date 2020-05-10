# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Appointments API', type: :request do
  let!(:user) { create(:user) }
  let!(:doctor) { create(:doctor) }
  let!(:appointments) { create_list(:appointment, 20, user: user, doctor: doctor) }
  let!(:appointment) { appointments.first }
  let!(:id) { appointments.first.id }

  describe 'GET /appointments' do
    it 'responds with invalid request without JWT' do
      get '/api/appointments'
      expect(response).to have_http_status(401)
      expect(response.body).to eq('')
    end

    before { get '/api/appointments', headers: auth_headers(user) }
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns appointments' do
      expect(json).not_to be_empty
      expect(json.size).to eq(20)
    end
  end

  describe 'POST /appointments' do
    before do
      post '/api/appointments', params: {
        appointment: { user_id: user.id, doctor_id: doctor.id, date: Time.now }
      }, headers: auth_headers(user)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns appointments' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end
  end

  describe 'UPDATE /appointments/:id' do
    context 'when the record exists' do
      before do
        patch "/api/appointments/#{id}", params: { appointment: {
          date: Time.now
        } }, headers: auth_headers(user)
      end

      it 'updates the appointment' do
        expect(response.body).to be_empty
      end

      it 'returns a status code of 204' do
        expect(response).to have_http_status(204)
      end
    end

    context "when the record doesn't exist" do
      before do
        patch "/api/appointments/#{appointments.last.id + 1}", params: {
          appointment: { date: Time.now.to_s }
        }, headers: auth_headers(user)
      end

      it 'returns a status code of 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'DELETE /appointments/:id' do
    context 'when the record exists' do
      before { delete "/api/appointments/#{id}", headers: auth_headers(user) }

      it 'returns a status code of 204' do
        expect(response).to have_http_status(204)
      end
    end

    context "when the record doesnt't exist" do
      before { delete "/api/appointments/#{appointments.last.id + 1}", headers: auth_headers(user) }

      it 'returns a status code of 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
