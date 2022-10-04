class CreatePlumbingJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :plumbing_jobs do |t|
      t.belongs_to :plumber, index: true
      t.belongs_to :client, index: true
      t.date :appointment_date
      t.string :status
      t.timestamps
    end
  end
end
