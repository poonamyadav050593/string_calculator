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

    it "returns the sum of multiple numbers" do
      sum = calculator.add("1,5,6")
      expect(sum).to eql(12)
    end

    it "returns sum of numbers with new line" do 
      sum = calculator.add("1\n2")
      expect(sum).to eql(3)
    end
    
    it "returns sum of numbers with new lines and comma" do
      sum = calculator.add("1\n2,4")
      expect(sum).to eql(7)
    end
    
    it "allows a custom delimiter to be used" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "throws an exception when a negative number is used" do
      expect { calculator.add("1,-2") }.to raise_error("Negative numbers not allowed: -2")
    end

    it "throws an exception when multiple negative numbers are used" do
      expect { calculator.add("1,-2,-3") }.to raise_error("Negative numbers not allowed: -2, -3")
    end

    it "handles a custom delimiter with multiple numbers and new lines" do
      expect(calculator.add("//;\n1;2;3\n4")).to eq(10)
    end  
  end
end