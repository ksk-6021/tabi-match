require 'rails_helper'

RSpec.describe User, type: :model do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー登録機能' do
      context 'ユーザー登録ができるとき' do
        it 'nameとemail、passwordとpassword_confirmationが存在すれば登録できること' do
          expect(@user).to be_valid
        end

        it 'パスワードは、6文字以上であれば登録できる' do
          @user.password = '123abc'
          @user.password_confirmation = '123abc'
          expect(@user).to be_valid
        end

        it 'パスワードは、半角英数字混合であれば登録できる' do
          @user.password = '123abc'
          @user.password_confirmation = '123abc'
          expect(@user).to be_valid
        end
      end

      context 'ユーザーが登録できないとき' do
        it 'nameが空では登録できないこと' do
          @user.name = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Name can't be blank")
        end

        it 'emailが空では登録できないこと' do
          @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end

        it 'emailは、@がない場合登録できない' do
          @user.email = 'aaaaaa.com'
          @user.valid?
        end

        it '重複したemailが存在する場合登録できないこと' do
          @user.save
          another_user = FactoryBot.build(:user, email: @user.email)
          another_user.valid?
          expect(another_user.errors.full_messages).to include('Email has already been taken')
        end

        it 'passwordが空では登録できないこと' do
          @user.password = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end

        it 'passwordは、5文字以下だと登録できない' do
          @user.password = '00000'
          @user.password_confirmation = '00000'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
        end

        it 'passwordは、半角数字のみでは登録できない' do
          @user.password = '111111'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
        end

        it 'passwordは、半角英字のみでは登録できない' do
          @user.password = 'aaaaaa'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
        end

        it 'passwordは、全角では登録できない' do
          @user.password = 'ｓｓｓ１１１'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
        end

        it 'passwordとpassword_confirmationが不一致では登録できないこと' do
          @user.password = '123456'
          @user.password_confirmation = '1234567'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
        end
      end
    end
end
