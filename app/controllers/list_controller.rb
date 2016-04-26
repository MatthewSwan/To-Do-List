class ListController < ApplicationController

  def index
    @list = List.all
  end

  def create
    @list = List.create(:item => params[:item])
    redirect_to root_path
  end
end
