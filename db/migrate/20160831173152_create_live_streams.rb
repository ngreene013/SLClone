class CreateLiveStreams < ActiveRecord::Migration
  def change
    create_table :live_streams do |t|
      t.references :surf_spot, index: true, foreign_key: true
      t.string :spot_cam_name
      t.timestamps null: false
    end
  end


end
