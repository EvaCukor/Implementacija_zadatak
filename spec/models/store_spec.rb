require 'rails_helper'

describe Store do
  it { is_expected.to have_many(:items) }
  it { is_expected.to have_many(:receipts) }
  it { is_expected.to validate_presence_of(:name) }
end