class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :header
      t.text :body
      t.references :post, index: true, foreign_key: true

      t.timestamps
    end
    add_index :chapters, [:post_id, :created_at]
  end
end
