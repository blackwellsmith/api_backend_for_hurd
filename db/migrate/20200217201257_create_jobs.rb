class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :user_id
      t.string :name
      t.string :location
      t.string :pay

      t.timestamps
    end
  end
end
