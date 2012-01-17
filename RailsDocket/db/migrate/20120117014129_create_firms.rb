class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :metatype
      t.string :data

      t.timestamps
    end
  end
end
