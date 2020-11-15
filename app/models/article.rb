class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_may :comments
end
