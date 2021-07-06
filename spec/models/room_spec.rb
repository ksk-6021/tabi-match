require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  describe 'ルーム作成機能' do
    context 'ルームが登録できるとき' do
      it 'nameの値が存在すれば登録できること' do
        expect(@room).to be_valid
      end
    end

    context 'ルームが登録できないとき' do
      it 'nameが空では登録できないこと' do
        @room.name = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
