class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :empid
      t.string :name
      t.integer :age
      t.text :address
      t.string :phone_no
      t.string :email_id
      t.string :qualification
      t.string :location
      t.string :experience
      t.string :department
      t.string :role

      t.timestamps
    end
    add_index :users, :empid, :unique => true
  end
end
