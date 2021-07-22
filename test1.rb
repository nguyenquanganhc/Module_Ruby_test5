# Chuan hóa chuỗi
# input: nhập vào họ và tên
# - thực hiện xóa khoảng trắng ở đầu, ở cuối, ở giữa sao cho mỗi từ cách nhau 1 khoảng trắng
# - chữ cái đầu của tên viết hoa, còn lại chữ thường
# - những từ còn lại trong họ tên lấy ký tự đầu tiên, viết hoa ký tự đó

def string_normalize input
    char_arr = input.split;
    strlen = char_arr.length-1;
    char_arr.each do |item|         # `!` Co nghia la thay doi ngay tai chuoi goc 
        item.downcase!;             # Tat ca cac ky tu ve chu thuong
        item[0] = item[0].upcase;   # Chu cai dau in hoa . 
    end    
                     
    new_str = char_arr[strlen];     # Add Ten
    for i in (0..strlen-1)          # Add Ho va Ho dem 
        new_str += char_arr[i][0];
    end
    return new_str;
end 

print "Please enter a string: ";
input_name = gets.chomp();

puts string_normalize(input_name);