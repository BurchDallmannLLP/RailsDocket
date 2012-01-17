class CreatePatentcases < ActiveRecord::Migration
  def change
    create_table :patentcases do |t|
      t.integer :case_id
      t.string :apptype
      t.boolean :appfiled
      t.datetime :date
      t.string :status
      t.string :examiner
      t.string :appno
      t.string :pubappno
      t.string :confno
      t.string :artunit
      t.datetime :fileddate
      t.boolean :pct
      t.boolean :pph
      t.boolean :special

      t.timestamps
    end
  end
end
