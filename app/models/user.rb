class User < ApplicationRecord
  has_one :account
  has_many :funds, through: :account
  validates :email, uniqueness: true
  validates :first_name, :last_name, :password, :password_confirmation, :email, :address, presence: true
  has_secure_password

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def investments
    self.account.account_funds
  end

  def available_funds
    self.investments.map(&:account_id)
  end


end
