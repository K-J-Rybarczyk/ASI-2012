class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :title
      t.integer :episodes
      t.text :description

      t.timestamps
    end
  end
end
