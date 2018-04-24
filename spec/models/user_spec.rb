require 'rails_helper'

RSpec.describe User, type: :model do
subject { build :user }

  it 'builds a valid User from the factory' do
    expect(subject).to be_valid
  end

  it 'is invalid without a username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid with duplicate username' do
    user1 = create(:user, username: 'Username')
    user2 = build(:user, username: 'Username')
    expect(user2).to_not be_valid
  end

  it 'is invalid with duplicate email' do
    user1 = create(:user, email: 'taken@domain.com')
    user2 = build(:user, email: 'taken@domain.com')
    expect(user2).to_not be_valid
  end

  describe 'Associations' do
    it 'has many posts' do
      expect(User.reflect_on_association(:posts).macro).to eq(:has_many)
    end
  end
end
