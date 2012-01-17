class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :case_id
      t.datetime :date
      t.float :hours
      t.string :note

      t.timestamps
    end
  end
end
