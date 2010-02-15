class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :calendar_id
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :stop_at
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
