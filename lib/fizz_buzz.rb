def console
  raise "argument is nil" if ARGV[0].nil?
  max = ARGV[0].to_i
  puts map_upto max
end

def map_upto(max)
  (1..max).map { |n| fizzbuzz n }
end

def fizzbuzz_hash
  { 'fizz' => 3, 'buzz' => 5 }
end

def fizzbuzz(n)
  fizzbuzz_hash
    .map { |str, val| str if (n % val).zero? }.join
    .tap { |str| break str.empty? ? n : str }
end

if __FILE__ == $0
  console
end
