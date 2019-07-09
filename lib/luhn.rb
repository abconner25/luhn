module Luhn
  def self.is_valid?(number)
    count = 1
    sum = 0
    while (number > 0)
      temp = number % 10
      if (count % 2 == 0)
        temp = temp * 2
        if (temp > 9)
          temp = temp - 9
        end
      end
      sum += temp
      count += 1
      number = number / 10
    end
    if (sum % 10 == 0)
      return true
    else
      return false
    end
  end
end