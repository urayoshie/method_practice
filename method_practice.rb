require 'active_support/core_ext/numeric/conversions'

puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

plan = gets.to_i

def plan_contain(place, price)
  puts "#{place}旅行ですね、何人で行きますか？"
# number of tourist & price
number = gets.to_i
# total_priceは通常価格
total_price = (number * price).to_s(:delimited)
# discount_priceは10%割引した価格
discount_price = ((number * price * 0.9).floor).to_s(:delimited)

  puts "#{number}人"

  if number < 5
    puts "合計金額：¥#{total_price}"
  else
    puts <<~TEXT
    5人以上なので10%割引となります
    合計料金：¥#{discount_price}
    TEXT
  end
end

if plan == 1
  puts plan_contain("沖縄", 10000)
elsif plan == 2
  puts plan_contain("北海道", 20000)
elsif plan == 3
  puts plan_contain("九州", 15000)
end
