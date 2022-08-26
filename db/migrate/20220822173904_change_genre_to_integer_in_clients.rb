class ChangeGenreToIntegerInClients < ActiveRecord::Migration[6.0]
  def change
    change_column :clients, :genre, :integer, using: 'genre::integer'
  end
end
