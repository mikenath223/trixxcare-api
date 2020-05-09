# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:doctors).through(:appointments) }
  it { is_expected.to have_db_column(:username) }
  it { is_expected.to have_db_column(:password_digest) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
end
