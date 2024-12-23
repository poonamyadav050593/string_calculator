require './lib/string_calculator.rb'

describe StringCalculator do 
  let(:calculator) { StringCalculator.new }
  context "Given two numbers" do 
    it "adds the numbers using the add method" do
      sum = calculator.add(2,3)
      expect(sum).to eql(5)
    end
  end
end