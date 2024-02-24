require "prob4"

RSpec.describe BankAccount do

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
    increase = 100
    account = BankAccount.new
    account.deposit increase
    expect(account.balance).to eq increase
    end
  end

  describe "#withdraw" do
    account = BankAccount.new
    it "decreases the balance by the withdrawal amount if funds are available" do
      account.deposit 300
      account.withdraw 50
      expect(account.balance).to eq 250
    end

    it "does not change the balance if insufficient funds" do
      account.withdraw 100
      expect(account.balance).to eq 150
    end
  end

  describe "#balance" do
    account = BankAccount.new 100
    it "returns the current balance" do
      account.deposit 50
      expect(account.balance).to eq 150
    end
  end
end
