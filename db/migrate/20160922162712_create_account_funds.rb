class CreateAccountFunds < ActiveRecord::Migration[5.0]
  def change
    create_table :account_funds do |t|
      t.integer :account_id
      t.integer :fund_id

      t.timestamps
    end
  end
end
