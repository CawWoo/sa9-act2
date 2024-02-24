
require "prob2"

chore = "Dishes"

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      list = TodoList.new
      list.add chore
      expect(list.todos[-1]).to eq chore
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      list = TodoList.new
      list.remove chore
      expect(list.todos.include?(chore)).to eq false
    end
  end

  describe "#todos" do
    it "returns all todos" do
      list = TodoList.new
      (my_list = ["Laundry", "Sweeping", "Fridge"]).each{|i| list.add i}
      expect(list.todos == my_list).to eq true
    end
  end
end
