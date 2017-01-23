# Implement your procedural solution here!
def largest_palindrome_product

product = 0 
  (101...999).each do |a|
    (100..998).each do |b|
      if is_palindrome?(a,b) && (a * b) > product 
        product = a * b 
      end 
    end
  end
  product
end

def is_palindrome?(a,b)
  (a * b).to_s.reverse.to_i == (a * b)
end

