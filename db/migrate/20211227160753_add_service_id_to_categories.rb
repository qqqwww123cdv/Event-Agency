class AddServiceIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :service_id, :integer
    add_index :categories, :service_id
  end
end
