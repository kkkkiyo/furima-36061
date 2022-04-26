require 'rails_helper'

RSpec.describe Item, type: :model do
  
  describe '商品出品登録' do
   
    context '商品登録できる場合' do
      it 'すべての情報があれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '商品登録ができない場合' do

      it 'imageが空では登録はできない' do
        @item.image = ''
        @item.valid?
        expect(@user.errors.full_messages).to include("image can't be blank")
      end

      it 'item_nameが空では登録はできない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("item_name can't be blank")
      end

      it 'item_infoが空では登録はできない' do
        @item.item_info = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("item_info can't be blank")
      end

      it 'item_categoryが空では登録はできない' do
      end

      it 'item-sales-statusが空では登録はできない' do
      end










  end


  
end
