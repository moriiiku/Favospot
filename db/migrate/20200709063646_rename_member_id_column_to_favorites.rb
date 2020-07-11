class RenameMemberIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
  	rename_column :favorites, :member_id, :user_id
  end
end
