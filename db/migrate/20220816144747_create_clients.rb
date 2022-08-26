class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.boolean :genre
      t.text :image
      t.integer :dos
      t.integer :epaule
      t.integer :poitrine
      t.integer :long_manche
      t.integer :tour_manche
      t.integer :long_taille
      t.integer :tour_taille
      t.integer :pinces
      t.integer :long_camisole
      t.integer :long_chemise
      t.integer :poignet
      t.integer :tour_bras
      t.integer :long_robe
      t.integer :ventre
      t.integer :tour_cou
      t.integer :frappe
      t.integer :ceinture
      t.integer :bassin
      t.integer :genoux
      t.integer :cuisse
      t.integer :long_jupe
      t.integer :long_pantalon
      t.integer :bas

      t.timestamps
    end
  end
end
