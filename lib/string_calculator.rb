class StringCalculator

  def add(numbers)

    # Return 0 if the string is empty
    return 0 if numbers.empty?

    delimiter = ','

    # Replace newline characters and custom delimiters
    numbers = numbers.gsub("\n", delimiter)
    numbers = numbers.split(delimiter)

    # Return the sum of all numbers
    numbers.map(&:to_i).sum

  end	

end	