class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
    	t.text :uuid
    	t.string :name
    	t.integer :user_id
    	t.string :email
    	t.string :phone
    	t.text :address
    	t.string :company
    	t.date :dob
    	t.timestamps
    end
  end
end
