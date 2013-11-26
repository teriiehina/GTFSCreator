class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :agency_id       , default: nil, null: false
      t.string :agency_name     , default: nil, null: false
      t.string :agency_url      , default: nil, null: false
      t.string :agency_timezone , default: nil, null: false
      t.string :agency_lang     , default: nil, null: false
      t.string :agency_phone    , default: nil, null: false
      t.string :agency_fare_url
      
      t.timestamps
    end
  end
end
