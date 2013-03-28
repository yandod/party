module HomeHelper
  def hoge(number)
    beer = (number * 1.5) .ceil
    pizza = (number / 3.65) .ceil
    subtotal_beer = beer * 200
    subtotal_pizza = pizza * 2500
    total = subtotal_beer + subtotal_pizza
    price = total / number
    
    {
      :beer => beer,
      :pizza => pizza,
      :subtotal_beer => subtotal_beer,
      :subtotal_pizza => subtotal_pizza,
      :total => total,
      :price => price
    }
  end
end
