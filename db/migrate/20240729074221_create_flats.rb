class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
