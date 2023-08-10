# 編號：CANDY-008
# 程式語言：Ruby
# 題目：傳入一字串，計算得分最高的字
#      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
#      所有傳入的字都是小寫。

def highestScoreWord(_input)
    letter = _input.split('')
    word = _input.split(' ')
    sum = []
    subtotal = 0 
  
    letter.each_with_index do |el, idx|
      score = el.ord - 'a'.ord + 1
      p score
      if score > 0
        subtotal += score
      end
  
      if idx == letter.length - 1 || score <= 0
        sum.push(subtotal)
        subtotal = 0
      end
    end
    
    word[sum.index(sum.max)]
  end
  
  p highestScoreWord('lorem ipsum dolor sit amet') # 印出 ipsum
  p highestScoreWord('heyn i need a rubygem up to build this') # 印出 rubygem
  p highestScoreWord('in time machine there are some bugs') # 印出 there