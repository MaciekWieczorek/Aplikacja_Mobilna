class CreateLoEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :lo_events do |t|
      t.string :Ongoing_events
      t.string :Event
      t.boolean :on_off

      t.timestamps
    end
  end
end
