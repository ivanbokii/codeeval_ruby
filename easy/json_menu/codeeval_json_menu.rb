require 'json'

def get_id_sum(menu_hash)
  result = menu_hash['menu']['items']
  .reject { |item| item.nil? or item['label'].nil? }
  .map { |item| item['id'].to_i }
  .reduce(:+)

  result.nil? && 0 || result
end

while line = gets
  next if line.chomp.empty?

  puts get_id_sum(JSON.parse(line))
end