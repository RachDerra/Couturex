class AddCategoryToModels < ActiveRecord::Migration[6.0]
  def change
    add_reference :models, :category, null: false, foreign_key: true
  end
end
