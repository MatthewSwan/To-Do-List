class ListController < ApplicationController


  def index
   # @new = List.create(:item => params[:list][:item])
   #  require "pry"
   #  binding.pry
    @list = List.all
  end


end
