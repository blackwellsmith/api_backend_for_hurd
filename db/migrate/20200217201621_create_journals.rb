class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :user_id
      t.string :entry
      t.string :meetups
      t.string :study
      t.string :applications
      t.string :goals

      t.timestamps
    end
  end
end
