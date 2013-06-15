dict = {}

string = ARGV[0]

File.open('dict.txt') do |f|
  lines = f.read.lines

  lines.each do |i|
    a, b, c = i.split
    dict[c] = b
  end
end

cs = string.chars

puts cs.map { |c| dict[c] || '?' }.join(' ')
