class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.integer :post_id
      t.string :tag_name

      t.timestamps
    end
  end
end
