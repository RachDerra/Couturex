class ChangeEtatFactureToIntegerInOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :etat_facture, :integer, using: 'etat_facture::integer'
  end
end
