class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fname
      t.string :lname
      t.string :addy1
      t.string :addy2
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.string :phone
      t.string :email
      t.boolean :engagltr
      t.datetime :engagdate
      t.boolean :probono

      t.timestamps
    end
  end
end
