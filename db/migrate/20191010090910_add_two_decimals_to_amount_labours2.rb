class AddTwoDecimalsToAmountLabours2 < ActiveRecord::Migration[5.1]
  def change
    change_column :labours, :amount, :decimal, precision: 12, scale: 2
  end
end
