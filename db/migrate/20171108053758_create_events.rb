class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :price
      t.date :date

      t.timestamps
    end
  end
end
