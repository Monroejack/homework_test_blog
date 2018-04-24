require 'rails_helper'

RSpec.describe Post, type: :model do
subject { build :post }

  it 'builds a valid Post from the factory' do
    expect(subject).to be_valid
  end

  it 'is invalid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid without an article' do
    subject.article = nil
    expect(subject).to_not be_valid
  end

  describe 'Associations' do

    it 'has one user' do
      expect(Post.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end

end
