# Implement your object-oriented solution here!
class LargestPalindromeProduct

def answer
  product = 0 
    (101...999).each do |a|
        @a = a
      (100..998).each do |b|
        @b = b
        if is_palindrome? && (a * b) > product 
          product = a * b 
        end 
      end
    end
    product
  end


  def is_palindrome?
    (@a * @b).to_s.reverse.to_i == (@a * @b)
  end


end