class AddUserToModels < ActiveRecord::Migration[6.0]
  def change
    add_reference :models, :user, null: false, foreign_key: true
  end
end
