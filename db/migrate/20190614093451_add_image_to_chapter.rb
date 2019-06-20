class AddImageToChapter < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :image, :string
  end
end
