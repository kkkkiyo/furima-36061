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
      
      it 'item_categoryで「---」が選択されている場合は出品できない' do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'item-sales-statusが空では登録はできない' do
        @item.sales_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Sales status can't be blank")
      end

      it 'item-sales-statusで「---」が選択されている場合は出品できない' do
        @item.sales_status_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Sales status must be other than 1")
      end

      it 'item-shipping-fee-statusが空では登録はできない' do
        @item.shipping_fee_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping fee status can't be blank")
      end

      it 'item-shipping-fee-statusで「---」が選択されている場合は出品できない' do
        @item.shipping_fee_status_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping fee status must be other than 1")
      end

      it 'prefecture_idが空では登録はできない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'prefecture_idで「---」が選択されている場合は出品できない' do
        @item.prefecture_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture must be other than 1")
      end
    
      it 'scheduled_delivery_idが空では登録はできない' do
        @item.scheduled_delivery_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Scheduled delivery can't be blank")
      end

      it 'scheduled_delivery_idが選択されている場合は出品できない' do
        @item.scheduled_delivery_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Scheduled delivery must be other than 1")
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

      it 'priceは¥300以下では保存できない' do
        @item.price = '200'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end

      it 'priceは¥9,999,999以上では保存できない' do
        @item.price = '99999999'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
      
      it 'userが紐付いていなければ、出品できない' do
        @item.user_id = 'nil'
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end

    end
  end
end
