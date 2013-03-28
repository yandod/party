class HomeController < ApplicationController
  def index
     @number = params[:q].to_i
     if @number == 0 then
       @number = 10
     end
  end
end
