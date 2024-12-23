class StringCalculator

  def add(numbers)

    # Return 0 if the string is empty
    return 0 if numbers.empty?

     # Handle custom delimiters
    if numbers.start_with?("//")
      delimiter_end_index = numbers.index("\n")
      delimiter = numbers[2..delimiter_end_index-1]
      numbers = numbers[delimiter_end_index+1..-1]
    else
      delimiter = ","
    end

    # Replace newline characters and custom delimiters
    numbers = numbers.gsub("\n", delimiter)
    numbers = numbers.split(delimiter)

    # Check for negative numbers and collect them
    negatives = numbers.select { |n| n.to_i < 0 }
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end


    # Return the sum of all numbers
    numbers.map(&:to_i).sum

  end	

end	