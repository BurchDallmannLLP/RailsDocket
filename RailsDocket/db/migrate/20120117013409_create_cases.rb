class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :docketno
      t.string :casetype

      t.timestamps
    end
  end
end
