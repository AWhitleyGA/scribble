class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
end
