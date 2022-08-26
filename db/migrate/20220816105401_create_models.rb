class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :name
      t.text :description
      t.text :image
      t.integer :montant

      t.timestamps
    end
  end
end
