class AddExtraToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :extra, :string
  end
end
