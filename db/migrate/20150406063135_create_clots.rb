class CreateClots < ActiveRecord::Migration
  def change
    create_table :clots do |t|
      t.string :name
      t.references :location

      t.timestamps
    end
  end
end
