class AddPlaceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :place, :text
  end
end
