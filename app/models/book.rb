class Book < ApplicationRecord
  validates :book_name, presence: true, uniqueness: true
  validates :genre, presence: true
  validates :author_name, presence: true
  validates :summary, presence: true
  validates :price, presence: true
  validates :published_date, presence: true

  searchkick word_middle: [:book_name, :genre, :summary]

  def search_data
    {
      book_name: book_name,
      genre: genre,
      author_name: author_name,
      summarry: summary,
    }
  end
end
