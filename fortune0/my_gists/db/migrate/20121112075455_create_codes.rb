class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :lang
      t.text :code
      t.string :desc

      t.timestamps
    end
  end
end
