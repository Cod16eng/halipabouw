class AddTwoDecimalsToAmountMaterials < ActiveRecord::Migration[5.1]
  def change
    change_column :materials, :amount, :decimal, precision: 5, scale: 2
  end
end
