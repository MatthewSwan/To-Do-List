class Api::ItemsController < ApplicationController

  before_action :assign_item, only: [:show, :update]

  def index
    render json: List.all
  end

  def show
    render json: @list
  end

  def update
    @list.update(item_params)

    if @list.save
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  def create
    @list = List.new(item_params)

    if @list.save
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  private

  def item_params
    result = params.require(:item).permit(:body, :date)
    #result[:user_id] = current_user.id
    result
  end

  def assign_item
    @list = List.find(params[:id])
  end
end
