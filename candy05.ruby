# 編號：CANDY-005
# 程式語言：ruby
# 題目：完成函數的內容，把傳進去的數字的每個位數平方之後組合在一起

def squareDigits(num)
  arr = num.digits.reverse
  square = arr.map do |n|
    n**2
  end
  square.join.to_i
end

p squareDigits(3212) # 印出 9414
p squareDigits(2112) # 印出 4114
p squareDigits(387) # 印出 96449
