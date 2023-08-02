# 編號：CANDY-006
# 程式語言：Ruby
# 題目：找出在數字陣列裡跟其它元素不一樣的值

def findDifferent(numbers)
  filter = 0
  numbers.each_with_index do |num, idx|
    if num != numbers[idx-1]
      filter = numbers[idx-1]
    end
  end
  filter
end

p findDifferent([1, 1, 1, 1, 3, 1, 1, 1]) # 印出 3
p findDifferent([2, 2, 2, 4, 2, 2]) # 印出 4
p findDifferent([8, 3, 3, 3, 3, 3, 3, 3]) # 印出 8