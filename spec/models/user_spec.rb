require 'rails_helper'

RSpec.describe User, type: :model do
  context "has one account" do
    it "can create one account" do
      clark = User.create!(first_name: "Clark", last_name: "Sacktor", password: "password", email:"clark@clark.com", address: "123 main st")
      account = Account.create!(user:clark, balance: 100)
      clark.account = account
    end
  end
end
