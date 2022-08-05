class Book < ApplicationRecord
  validates :book_name, presence: true, uniqueness: true
  validates :genre, presence: true
  validates :author_name, presence: true
  validates :summary, presence: true
  validates :price, presence: true
  validates :published_date, presence: true
end
