class AddDateToLaboursAndMaterials < ActiveRecord::Migration[5.1]
  def change
    add_column :labours, :datel, :date
    add_column :materials, :datem, :date
  end
end
