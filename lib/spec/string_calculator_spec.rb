require './lib/string_calculator.rb'

describe StringCalculator do 
  let(:calculator) { StringCalculator.new }
  describe "#add" do
    it "returns 0 when the input is an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "adds the numbers using the add method" do
      sum = calculator.add("1")
      expect(sum).to eql(1)
    end

    it "adds the numbers using the add method" do
      sum = calculator.add("1,6")
      expect(sum).to eql(7)
    end
  end
end