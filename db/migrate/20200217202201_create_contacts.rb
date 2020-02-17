class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :user_id
      t.string :name
      t.string :company
      t.string :position
      t.string :contact_info

      t.timestamps
    end
  end
end
