class CreateSurfSpots < ActiveRecord::Migration
  def up
    create_table :surf_spots do |t|
      t.integer :region_id
      t.string :spot_full_name
      t.string :spot_city_name
      t.string :spot_cam_name
      t.timestamps null: false
    end
  end

  def down
    drop_table :surf_spots
  end
end
