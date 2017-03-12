module HomeHelper
  def hoge(number = 10, brand = "domino")
    case brand
    when "domino"
      base_price = 2550
      base_person = 3.06
    when "pizzala"
      base_price = 2991
      base_person = 3.65
    when "pizzahut"
      base_price = 2500
      base_person = 2.70
    end
    beer = (number * 1.5) .ceil
    pizza = (number / base_person) .ceil
    subtotal_beer = beer * 200
    subtotal_pizza = (pizza * base_price * 1.08).ceil
    total = (subtotal_beer + subtotal_pizza)
    price = total / number

    {
      :beer => beer,
      :pizza => pizza,
      :subtotal_beer => subtotal_beer,
      :subtotal_pizza => subtotal_pizza,
      :total => total,
      :price => price,
      :base_price => base_price
    }
  end
end
