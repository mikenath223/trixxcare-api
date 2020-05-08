# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Houses API', type: :request do
  let!(:houses) { create_list(:house, 10) }
  let(:house_id) { houses.first.id }

  describe 'GET /houses' do
    before { get './houses' }

    it 'returns houses' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /houses/:id' do
    before { get "/houses/#{todo_id}" }

    context 'when the house record exists' do
      it 'returns the house' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(todo_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the house record does not exist' do
      let(:house_id) { 20 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found error message' do
        expect(response.body).to match(/Couldn't find house/)
      end
    end
  end
end
