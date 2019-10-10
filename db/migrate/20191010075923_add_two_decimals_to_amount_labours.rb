class AddTwoDecimalsToAmountLabours < ActiveRecord::Migration[5.1]
  def change
    change_column :labours, :amount, :decimal, precision: 5, scale: 2
  end
end
