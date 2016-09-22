require 'rails_helper'

RSpec.describe User, type: :model do
  context "has one account" do
    it "can create one account" do
      clark = User.create!(first_name: "Clark", last_name: "Sacktor", password: "password", email:"clark@clark.com", address: "123 main st")
      account = Account.create!(user:clark, balance: 100)
      expect(clark.account).to eq(account)
    end
  end

  context "user has many funds" do
    it "can have many funds through accounts" do
      clark = User.create!(first_name: "Clark", last_name: "Sacktor", password: "password", email:"clark@clark.com", address: "123 main st")
      account = Account.create!(user:clark, balance: 100)
      s_p = account.funds << Fund.create!(name: "S&P 500")
      dow_jones = account.funds << Fund.create!(name: "Dow Jones")
      expect(clark.funds).to eq([s_p, dow_jones])
    end
  end
end
