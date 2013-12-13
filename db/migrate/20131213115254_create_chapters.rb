class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :position
      t.references :book
      t.references :chapter
      t.references :chapter
      t.references :chunk

      t.timestamps
    end
    add_index :chapters, :book_id
    add_index :chapters, :chapter_id
    add_index :chapters, :chunk_id
  end
end
