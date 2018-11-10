require 'json'
readers={"id-1"=>"Ivan Bubnov", "id-2"=>"Maria Veselova", "id-3"=>"Iosif Zelensky", "id-4"=>"Sofia Slavska","id-5"=>"Sara Pushkevich","id-6"=>"George Gudzan"}
writers={"1"=>"Sergey Yesenin", "2"=>"Agatha Christie", "3"=>"Michael Bulgakov", "4"=>"Ivan Krilov","5"=>"Darya Dontsova","6"=>"Alex Pushkin","7"=>"Alex Block","8"=>"Viktor Gugo","9"=>"Dale Carnegie","10"=>"DBN"}
book_name_yesenin=["Black man", "About love", "Don't regret, don't call, don't cry","Poems", "Country of rascal"]
book_name_christie=["The Murder of Roger Ackroyd", "Peril at End House", "Murder on the Orient Express", "The ABC Murders", "And Then There Were None", "Five Little Pigs", "Crooked House"]
book_name_bulgakov=[]
book_name_krilov=[]
book_name_dontsova=[]
book_name_pushkin=[]
book_name_block=[]
book_name_gugo=[]
book_name_carnegie=[]
book_name_dbn=[]
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
reader_arr = Array.new
books_arr = Array.new
#|0|---|1----|2|---------------3--------------------------|---------------4--------------| choose idex_2_step_inside
# id-1,bib: 1,3, title: Don't regret_don't call_don't cry, date:20.09.2016...20.10.2016,
for i in 0...first_array.length do
string = first_array[i].split(',')
 us_1.push(string) if string[0].chomp=="id-1"# id-1,bib: 1,3, title: Don't regret_don't call_don't cry, date:20.09.2016...20.10.2016,
 us_2.push(string) if string[0].chomp=="id-2"
 us_3.push(string) if string[0].chomp=="id-3"
 us_4.push(string) if string[0].chomp=="id-4"
 us_5.push(string) if string[0].chomp=="id-5"
 us_6.push(string) if string[0].chomp=="id-6"
 yesenin.push(string) if string[1]=="bib: 1"
 christie.push(string) if string[1]=="bib: 2"
 bulgakov.push(string) if string[1]=="bib: 3"
 krilov.push(string) if string[1]=="bib: 4"
 dontsova.push(string) if string[1]=="bib: 5"
 pushkin.push(string) if string[1]=="bib: 6"
 block.push(string) if string[1]=="bib: 7"
 gugo.push(string) if string[1]=="bib: 8"
 carnegie.push(string) if string[1]=="bib: 9"
 dbn.push(string) if string[1]=="bib: 10"
end

reader_arr.push(us_1, us_2, us_3, us_4, us_5, us_6)# index i 1 step iside
books_arr.push(yesenin,christie,bulgakov,krilov,dontsova,pushkin,block,gugo,carnegie,dbn)


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

def min_2_step_inside (wrap, idex_1_step_inside, idex_2_step_inside)
  min=0
  i=0
  for i in 0...wrap.length do
    if wrap[i].length < min
      max = wrap[i].length
      obj_1_step_iside = wrap[i]
      obj_2_step_iside = obj_1_step_iside[idex_1_step_inside]
      obj_3_step_iside = obj_2_step_iside[idex_2_step_inside]
    end
  end
  return obj_3_step_iside
end

def max_1_step_inside (wrap, idex_1_step_inside)
  max=0
  i=0
  for i in 0...wrap.length do
    if wrap[i].length >= max
      max = wrap[i].length
      obj_1_step_iside = wrap[i]
      obj_2_step_iside = obj_1_step_iside[idex_1_step_inside]
    end
  end
end

def max_include(array,book_name)
  cnt=Array.new
  amout_cnt={}
  for i in 0...book_name.size do
    cnt.push("ctn_#{i}")
  end
  for j  in 0...book_name.size do
    amount=0
      for k in 0...1 do
        amount=+1 if array[k].include?(book_name[j])
        puts cnt[j], array[k], book_name[j], array[k].include?(book_name[j])
        amout_cnt[cnt[j]]=amount
    end
  end
  amout_cnt
end

print "The most reading user is "
max_2_step_inside(reader_arr,0,0)
puts "#{readers[max_2_step_inside(reader_arr,0,0)]}"
print "The most popular autor is: "
pop_writer=max_2_step_inside(books_arr,1,2)
puts "#{writers[max_2_step_inside(books_arr,1,2)]}"
puts "The most read book is"
#case pop_writer
 puts max_include(yesenin,book_name_yesenin)
#when "2" def max_include(yesenin,book_name_yesenin)
#when "3" def max_include(yesenin,book_name_yesenin)
