class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :montant_total
      t.integer :avance
      t.integer :reste
      t.boolean :etat_facture
      t.date :livraison
      t.text :image
      t.integer :etat_command
      t.integer :priority
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
