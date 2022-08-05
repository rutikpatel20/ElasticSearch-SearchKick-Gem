class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :genre
      t.string :author_name
      t.text :summary
      t.float :price
      t.date :published_date

      t.timestamps
    end
  end
end
