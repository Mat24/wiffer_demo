class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :essid, null: false
      t.string :bssid
      t.string :band
      t.integer :channel
      t.string :security_type
      t.boolean :wps
      t.string :longitude
      t.string :latitude
      t.string :first_seen
      t.string :last_seen

      t.timestamps null: false
    end
  end
end
