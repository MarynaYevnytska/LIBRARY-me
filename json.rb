require 'json'
count=0
big_array = Array.new
file_name="3_Books.txt"
keys = {1=> " bib :  1 ", 2=> " bib :  2 ", 3=> " bib :  3 ", 4=>  " bib :  4 ", 5=>  " bib :  5 ", 6=>  " bib :  6 ", 7=> " bib :  7 ", 8=> " bib :  8 ", 9=>  " bib :  9 ", 10=>   " bib :  10 "}
big_array= File.open(file_name, "r") do |line| line.readlines end
for i in 0...big_array.length do
  check=keys[3]
  string = big_array[i].split(',')
  puts big_array[i] if string[0].chomp==check.chomp
end
for i in 0..10 do
  puts check=keys[i]
end

#puts users




#data = File.open('color.txt'){|file| file.readline}

#puts data
#puts data.size
