class Api::ItemsController < ApplicationController

  before_action :assign_item, only: [:show, :update]

  def index
    render json: List.all
  end

  def show
    render json: @item
  end

  def update
    @item.update(item_params)

    if @item.save
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def item_params
    result = params.require(:item).permit(:body, :date)
    #result[:user_id] = current_user.id
    result
  end

  def assign_item
    @item = current_user.items.find(params[:id])
  end
end
