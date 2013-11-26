class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :stop_id        , null: false
      t.string :stop_code
      t.string :stop_name      , null: false
      t.string :stop_desc
      t.string :stop_lat       , null: false
      t.string :stop_lon       , null: false
      t.string :stop_url
      t.string :stop_timezone
      
      t.string :zone_id
      t.string :location_type
      t.string :parent_station
      t.string :wheelchair_boarding

      t.timestamps
    end
  end
end
