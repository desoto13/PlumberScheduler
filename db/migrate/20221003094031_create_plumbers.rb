class CreatePlumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :plumbers do |t|
      t.string :name
      t.string :address
      t.string :vehicle
      t.timestamps
    end
  end
end
