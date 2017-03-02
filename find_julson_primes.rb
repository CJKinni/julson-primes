def prime? (n)
  if n <= 1
    false
  elsif n == 2
    true
  else 
    (2..n/2).none? { |i| n % i == 0}
  end
end

def sum_digits(n)
  n.to_s.chars.map(&:to_i).reduce(:+)
end

i = 1

while i < ARGV[0]
  if prime? (i) and prime? (sum_digits(i))
    puts i.to_s + " Julson"
  elsif prime? (i)
    puts i.to_s + " Prime"
  end
  i += 1
end
