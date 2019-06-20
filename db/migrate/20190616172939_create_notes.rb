class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :post, index: true, foreign_key: true
      t.string :author
      t.text :content

      t.timestamps
    end
    add_index :notes, [:post_id, :created_at]
  end
end
