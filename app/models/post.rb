class Post < ApplicationRecord
  validates :article, presence: true
  validates :title, presence: true
  belongs_to :user
end
