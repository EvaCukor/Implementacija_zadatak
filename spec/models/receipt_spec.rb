require 'rails_helper'

describe Receipt do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:store) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:store) }
  it { is_expected.to validate_presence_of(:items) }
  it { should accept_nested_attributes_for(:items) }
end