class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :No_Template
      t.string :Place
      t.string :Date

      t.timestamps
    end
  end
end
