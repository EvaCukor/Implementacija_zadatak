require 'rails_helper'

describe Receipt do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:store) }
  it { is_expected.to validate_presence_of(:name) }
end