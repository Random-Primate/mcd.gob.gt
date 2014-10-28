ctr = 10
arr = Array.new

while ctr >= 0 do
  arr.insert(ctr, Faker::Address.city)
  ctr -= 1
end

puts arr