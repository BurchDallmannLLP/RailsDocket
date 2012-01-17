class CreateCaseevents < ActiveRecord::Migration
  def change
    create_table :caseevents do |t|
      t.integer :case_id
      t.string :eventtype
      t.datetime :date
      t.boolean :complete

      t.timestamps
    end
  end
end
