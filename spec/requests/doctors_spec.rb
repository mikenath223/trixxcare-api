# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Doctors API', type: :request do
  let!(:user) { create(:user) }
  let!(:doctors) { create_list(:doctor, 10) }
  let!(:doctor_id) { doctors.first.id }

  describe 'GET /doctors' do
    it 'responds with invalid request without JWT' do
      get '/api/doctors'
      expect(response).to have_http_status(401)
      expect(response.body).to eq('')
    end

    before { get '/api/doctors', headers: auth_headers(user) }
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns doctors' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
  end

  describe 'GET /doctors/:id' do
    before { get "/api/doctors/#{doctor_id}", headers: auth_headers(user) }

    context 'when the doctor record exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the house' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(doctor_id)
      end
    end

    context 'when the doctor record does not exist' do
      let(:doctor_id) { 20 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found error message' do
        expect(response.body).to match(/Couldn't find Doctor/)
      end
    end
  end
end
