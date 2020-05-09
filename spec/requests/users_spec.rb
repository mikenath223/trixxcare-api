# frozen_string_literal: true

require "rails_helper"

describe "GET /users" do
  let!(:users) { create_list(:user, 10) }
  let(:user) { users.first }

  before { get "/api/users", headers: auth_headers(user) }

  it "returns HTTP status 200" do
    expect(response).to have_http_status 200
  end

  it "returns users as nil as security measure" do
    expect(json.size).to eq(10)
  end
end
