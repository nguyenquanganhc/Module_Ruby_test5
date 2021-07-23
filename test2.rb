# input:  - Nhập số nguyên N là số lượng phần tử mảng
# - nhập lần lượt N phần tử mảng
# output: in ra 1 hash với key là giá trị vừa nhập, value là số lần xuất hiện, sắp xếp hash theo số lần xuất hiện


print "Enter N which is array's length: ";
arr_length = gets.chomp.to_i;

while arr_length <= 0 do
    puts "Wrong input. N must be an integer!"
    print "Please enter array's length again: "
    arr_length = gets.chomp.to_i;
end

arr_input = Array.new(arr_length);
for i in (0..arr_length-1)
    print "Enter Array[#{i}]: ";
    arr_input[i] = gets.chomp.to_i;
end

# print arr_input;

counts = Hash.new(0);
arr_input.each { |key| counts[key] += 1 };
print counts.sort_by{ |key,value| value};
puts;