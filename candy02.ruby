# 編號：CANDY-002
# 程式語言：ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

def missingChar(chars)
    completeStr = (chars[0]..chars[-1]).to_a
    completeStr - chars
end

chars1 = ['a', 'b', 'c', 'd', 'f', 'g']
chars2 = ['O', 'Q', 'R', 'S']

puts missingChar(chars1) # 印出 e
puts missingChar(chars2) # 印出 P
  