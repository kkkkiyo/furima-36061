require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '商品出品登録' do
  before do
    @item = FactoryBot.build(:item)
  end
   
    context '商品登録できる場合' do
      it 'すべての情報があれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '商品登録ができない場合' do

      it 'item_nameが空では登録はできない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end

      it 'item_infoが空では登録はできない' do
        @item.item_info = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item info can't be blank")
      end

      it 'item_categoryが空では登録はできない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'item-sales-statusが空では登録はできない' do
        @item.sales_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Sales status can't be blank")
      end

      it 'item-shipping-fee-statusが空では登録はできない' do
        @item.shipping_fee_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping fee status can't be blank")
      end

      it 'prefecture_idが空では登録はできない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'prefecture_idが空では登録はできない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
    
      it 'scheduled_delivery_idが空では登録はできない' do
        @item.scheduled_delivery_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Scheduled delivery can't be blank")
      end

      it 'priceが空では登録はできない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end

      it 'priceが¥300~¥9,999,999の間のみ保存可能であること' do
        @item.price = '200'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end

      it 'priceは半角数値のみ保存可能であること。' do
        @item.price = 'jjiji'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
    end
  end
end
