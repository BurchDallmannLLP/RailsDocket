class CreateClientcases < ActiveRecord::Migration
  def change
    create_table :clientcases do |t|
      t.integer :case_id
      t.integer :client_id

      t.timestamps
    end
  end
end
