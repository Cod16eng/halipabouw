class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :amount
      t.text :descrp
      t.integer :nr_inv_mat
      t.integer :project_id
      t.string :supplier

      t.timestamps
    end
  end
end
