require 'rails_helper'

describe Item do
  it { is_expected.to belong_to(:store) }
  it { is_expected.to belong_to(:receipt) }
  it { is_expected.to validate_presence_of(:name) }
end