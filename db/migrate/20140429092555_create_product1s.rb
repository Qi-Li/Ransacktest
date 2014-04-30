class CreateProduct1s < ActiveRecord::Migration
  def change
    create_table :product1s do |t|
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
