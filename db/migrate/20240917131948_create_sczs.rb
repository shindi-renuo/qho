class CreateSczs < ActiveRecord::Migration[7.0]
  def change
    create_table :sczs do |t|
      t.float :mass # this is the only necessary thing to calc a schwarschild radius
      t.timestamps
    end
  end
end
