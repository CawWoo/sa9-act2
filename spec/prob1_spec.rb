#Rspec Skeleton for Class Code
require "prob1"

user = User.new("CarWoo")
user.log_in


RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      expect(user.log_in).to eq(true)
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user.log_out
      expect(user.log_out).to eq(false)
    end
  end

  describe "#username" do
    it "returns the correct username" do
      username = "CarWoo"
      expect(user.username).to eq(username)
    end
  end
end
