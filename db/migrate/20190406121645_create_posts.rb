class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :summary
      t.string :start_date
      t.string :exnd_date

      t.timestamps
    end
  end
end
