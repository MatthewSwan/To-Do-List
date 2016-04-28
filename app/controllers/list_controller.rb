class ListController < ApplicationController

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.create(:item => params[:item])
    redirect_to root_path
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    List.update(params[:id], {item: params[:list][:item]})
    redirect_to root_path
  end
end
