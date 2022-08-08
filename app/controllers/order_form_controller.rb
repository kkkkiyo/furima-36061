class OrderFormController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def new
  end

  def create
    @order_form = OrderForm.create(order_form_params)
    Address.create(address_params)
    redirect_to root_path
  end

  private

  def order_form_params
    params.permit(:item).merge(user_id: current_user.id)
  end

  def address_params
    params.permit(:postal_code, :prefecture, :city, :address, :building, :phone_number).merge(order_id: @order_form.id)
  end
end
