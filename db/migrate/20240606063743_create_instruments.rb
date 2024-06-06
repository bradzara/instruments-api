class CreateInstruments < ActiveRecord::Migration[7.1]
  def change
    create_table :instruments do |t|
      t.string :type
      t.string :brand
      t.string :model
      t.string :category
      t.integer :year_invented

      t.timestamps
    end
  end
end
