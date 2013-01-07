class AddUserIdColumn < ActiveRecord::Migration
  def up
    add_column :animes, :user_id, :integer
  end

  def down
    remove_column :animes, :user_id
  end
end
