class AddTwoDecimalsToAmountMaterials2 < ActiveRecord::Migration[5.1]
  def change
    change_column :materials, :amount, :decimal, precision: 12, scale: 2
  end
end
