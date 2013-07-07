class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :empid
      t.string :password_digest

      t.timestamps
    end
    add_index :authentications, :empid, :unique => true
  end
end
