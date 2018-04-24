require 'rails_helper'

RSpec.describe User, type: :model do
let(:user) { build :user }

  it 'is invalid without a username' do
    user.username = nil
    expect(user).to_not be_valid
  end

  it 'is invalid without an email' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'has one user' do
    expect(User.reflect_on_association(:posts).macro).to eq(:has_many)
  end

end
