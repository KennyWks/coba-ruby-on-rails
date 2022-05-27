class CreateBooks < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    SQL
    create_table :books, id: false do |t|
      t.uuid :book_id, null: false
      t.string :title
      t.integer :page
      t.text :description
      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE books ALTER COLUMN book_id SET DEFAULT uuid_generate_v4();
      ALTER TABLE books ADD PRIMARY KEY (book_id);
    SQL
  end
  
  def down
    drop_table :books
  end
end
