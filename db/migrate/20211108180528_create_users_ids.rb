class CreateUsersIds < ActiveRecord::Migration[6.1]
  def change
    create_table :users_ids do |t|
      t.integer :index
      t.string :list_of_templates
      t.string :ongoing_event

      t.timestamps
    end
  end
end
