class ItemsController < ApplicationController
  def index  # indexアクションを定義した
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
        render :new
    end
  end

end
