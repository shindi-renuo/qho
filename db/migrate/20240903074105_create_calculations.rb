class CreateCalculations < ActiveRecord::Migration[7.0]
  def change
    create_table :calculations do |t|
      t.float :mass
      t.float :omega
      t.float :position
      t.float :energy
      t.timestamps
    end
  end
end
