class CreateRegions < ActiveRecord::Migration
  def up
    create_table :regions do |t|
      t.integer :surf_spot_id
      t.integer :region_id

      t.timestamps null: false
    end
  end

  def down
    drop_table :regions
  end
end
