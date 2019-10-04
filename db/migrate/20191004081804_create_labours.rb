class CreateLabours < ActiveRecord::Migration[5.1]
  def change
    create_table :labours do |t|
      t.string :name
      t.decimal :amount
      t.text :descrp
      t.integer :project_id
      t.integer :nr_inv_lab

      t.timestamps
    end
  end
end
