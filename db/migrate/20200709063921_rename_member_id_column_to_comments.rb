class RenameMemberIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments, :member_id, :user_id
  end
end
