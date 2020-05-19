require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it { should have_many(:users).through(:appointments) }
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to have_db_column(:image) }
  it { is_expected.to have_db_column(:price) }
  it { is_expected.to have_db_column(:details) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:details) }
end
