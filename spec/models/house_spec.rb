# frozen_string_literal: true

require 'rails_helper'

RSpec.describe House, type: :model do
  it { should have_many(:users).through(:favorites) }
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to have_db_column(:image) }
  it { is_expected.to have_db_column(:price) }
  it { is_expected.to have_db_column(:details) }
  it { is_expected.to have_db_column(:rating) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:details) }
  it { should validate_presence_of(:rating) }
end
