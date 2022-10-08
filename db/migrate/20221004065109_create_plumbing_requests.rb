class CreatePlumbingRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :plumbing_requests do |t|
      t.belongs_to :client, index: true
      t.timestamps
    end
  end
end
