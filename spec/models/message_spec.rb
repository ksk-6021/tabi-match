require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'メッセージ投稿機能' do
    context 'メッセージが投稿ができるとき' do
      it 'contentとimageが存在していれば投稿できること' do
        expect(@message).to be_valid
      end

      it 'contentが空でも投稿できること' do
        @message.content = ''
        expect(@message).to be_valid
      end

      it 'imageが空でも投稿できること' do
        @message.image = nil
        expect(@message).to be_valid
      end
    end

    context 'メッセージが投稿できないとき' do
      it 'contentとimageが空では投稿できないこと' do
        @message.content = ''
        @message.image = nil
        @message.valid?
        expect(@message.errors.full_messages).to include("Content can't be blank")
      end

      it 'roomが紐付いていないと投稿できないこと' do
        @message.room = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('Room must exist')
      end

      it 'userが紐付いていないと投稿できないこと' do
        @message.user = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('User must exist')
      end
    end
  end
end
