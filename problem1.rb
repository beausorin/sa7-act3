require 'csv'

data = []

CSV.foreach("data.csv", headers: true) do |row|
  data << row.to_h
end

puts data.inspect
