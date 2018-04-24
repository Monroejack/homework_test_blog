require 'rails_helper'

RSpec.describe Post, type: :model do
let(:post) { build :post }

  it 'is invalid without a title' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'is invalid without an article' do
    post.article = nil
    expect(post).to_not be_valid
  end

  it 'has one user' do
    expect(Post.reflect_on_association(:user).macro).to eq(:belongs_to)
  end

end
