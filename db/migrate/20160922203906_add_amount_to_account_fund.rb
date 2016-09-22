class AddAmountToAccountFund < ActiveRecord::Migration[5.0]
  def change
    add_column :account_funds, :amount, :integer
  end
end
