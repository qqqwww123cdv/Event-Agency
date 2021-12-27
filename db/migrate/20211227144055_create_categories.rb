class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.text :title
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
