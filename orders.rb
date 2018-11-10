require 'json'
First_array = Array.new
file_name="4_Orders.txt"
first_array= File.open(file_name, "r") do |line| line.readlines end
us_1 = Array.new
us_2 = Array.new
us_3 = Array.new
us_4 = Array.new
us_5 = Array.new
us_6 = Array.new
yesenin = Array.new
christie = Array.new
bulgakov = Array.new
krilov = Array.new
dontsova = Array.new
pushkin = Array.new
block = Array.new
gugo = Array.new
carnegie = Array.new
dbn = Array.new
wrap_reader = Array.new
wrap_books = Array.new

for i in 0...first_array.length do
string = first_array[i].split(',')
 us_1.push(string) if string[0].chomp=="id-1"# id-1,bib: 1,3, title: Don't regret_don't call_don't cry, date:20.09.2016...20.10.2016,
 us_2.push(string) if string[0].chomp=="id-2"
 us_3.push(string) if string[0].chomp=="id-3"
 us_4.push(string) if string[0].chomp=="id-4"
 us_5.push(string) if string[0].chomp=="id-5"
 us_6.push(string) if string[0].chomp=="id-6"
 #yesenin.push(string) if string[1].chomp=="bib: 1"
 #christie.push(string) if string[1].chomp=="bib: 2"
 #bulgakov.push(string) if string[1].chomp=="bib: 3"
 #krilov.push(string) if string[1].chomp=="bib: 4"
 #dontsova.push(string) if string[1].chomp=="bib: 5"
 #pushkin.push(string) if string[1].chomp=="bib: 6"
 #block.push(string) if string[1].chomp=="bib: 7"
 #gugo.push(string) if string[1].chomp=="bib: 8"
 #carnegie.push(string) if string[1].chomp=="bib: 9"
 #dbn.push(string) if string[1].chomp=="bib: 10"
end

wrap_reader.push(us_1, us_2, us_3, us_4, us_5, us_6)# index i 1 step iside
wrap_books.push(yesenin,christie,bulgakov,krilov,dontsova,pushkin,block,gugo,carnegie,dbn)

#|0|---|1----|2|---------------3--------------------------|---------------4--------------| choose idex_2_step_inside
# id-1,bib: 1,3, title: Don't regret_don't call_don't cry, date:20.09.2016...20.10.2016,
def max_2_step_inside (wrap, idex_1_step_inside, idex_2_step_inside)
  max=0
  i=0
  for i in 0...wrap.length do
    if wrap[i].length >= max
      max = wrap[i].length
      obj_1_step_iside = wrap[i]
      obj_2_step_iside = obj_1_step_iside[idex_1_step_inside]
      obj_3_step_iside = obj_2_step_iside[idex_2_step_inside]
    end
  end
  return obj_3_step_iside
end
def max_1_step_inside (wrap, idex_1_step_inside, idex_2_step_inside)
  max=0
  i=0
  for i in 0...wrap.length do
    if wrap[i].length >= max
      max = wrap[i].length
      obj_1_step_iside = wrap[i]
      obj_2_step_iside = obj_1_step_iside[idex_1_step_inside]
    end
  end
  return obj_3_step_iside
end
print "The most reading user has ID: "
puts max_2_step_inside(wrap_reader,0,0)
#print "The most readed autor-ID is: "
#puts max_2_step_inside(wrap_books,0,0)





=begin
max=0
for i in 0...wrap_reader.length do
  if wrap_reader[i].length>=max
    max=wrap_reader[i].length #взяли размер итой строки
    books_max_id=wrap_reader[i] #создали массив из всех записей максимального юзера
    book=books_max_id[0]# взяли  1 запись по индексу
    reader_id = book[0]# взяли  элемент записи по индексу
  end
end
=end
