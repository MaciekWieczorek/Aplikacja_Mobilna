class CreateTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :templates do |t|
      t.string :name_of_template
      t.string :product
      t.integer :number_of_product
      t.boolean :checkbox

      t.timestamps
    end
  end
end
