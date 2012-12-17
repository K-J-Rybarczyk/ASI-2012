class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :user
      t.string :title
      t.integer :episodes
      t.text :description

      t.timestamps
    end
  end
end
