class HomeController < ApplicationController
  def index
     @number = params[:q].to_i
  end
end
