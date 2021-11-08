class CreateLoTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :lo_templates do |t|
      t.string :name_of_template
      t.integer :number_of_templates

      t.timestamps
    end
  end
end
