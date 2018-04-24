class Post < ApplicationRecord
  validates :article, :title, presence: true
  belongs_to :user
end
