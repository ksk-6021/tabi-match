require 'rails_helper'

RSpec.describe Post, type: :model do
    before do
      @post = FactoryBot.build(:post)
    end

    describe '募集投稿機能' do
      context '募集投稿ができるとき' do
        it 'trip_date、place、title、contentが存在していれば保存できること' do
          expect(@post).to be_valid
        end
      end

      context '募集投稿ができないとき' do
        it 'trip_dateが空では保存できないこと' do
          @post.trip_date = ''
          @post.valid?
          expect(@post.errors.full_messages).to include("Trip date can't be blank")
        end

        it 'placeが空では保存できないこと' do
          @post.place = ''
          @post.valid?
          expect(@post.errors.full_messages).to include("Place can't be blank")
        end

        it 'titleが空では保存できないこと' do
          @post.title = ''
          @post.valid?
          expect(@post.errors.full_messages).to include("Title can't be blank")
        end

        it 'contentが空では保存できないこと' do
          @post.content = ''
          @post.valid?
          expect(@post.errors.full_messages).to include("Content can't be blank")
        end
      end

    end
end
