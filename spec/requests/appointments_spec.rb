require "rails_helper"

RSpec.describe "Appointments API", type: :request do
  let!(:user) { create(:user) }
  let!(:doctor) { create(:doctor) }
  let!(:appointments) { create_list(:appointment, 20, user: user, doctor: doctor) }
  let!(:id) { appointments.first.id }

  describe "GET /appointments" do
    it "responds with invalid request without JWT" do
      get "/api/appointments"
      expect(response).to have_http_status(401)
      expect(response.body).to eq("")
    end

    before { get "/api/appointments", headers: auth_headers(user) }
    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end

    it "returns appointments" do
      expect(json).not_to be_empty
      expect(json.size).to eq(20)
    end
  end
end
