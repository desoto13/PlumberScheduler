class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :private_note
      t.string :address
      t.timestamps
    end
  end
end
