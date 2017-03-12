class HomeController < ApplicationController
  def index
    @number = params[:q].to_i
    @brand = params[:b]
    if @number == 0 then
     @number = 10
    end
    if @brand == nil then
      @brand = "domino"
    end
  end
end
