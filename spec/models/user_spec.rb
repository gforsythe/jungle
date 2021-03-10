require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should successfully create new user" do
      @user = User.create(name: "gabe, email: "gabe@gmail.com", password: "1234", password_confirmation: "1234")
      expect(@user).to be_valid
    end

    it "name missing" do 
      @user = User.create(email: "gabe@gmail.com", password: "1234", password_confirmation: "1234")
      expect(@user).not_to be_valid
      @user.errors.full_messages
    end

    it "email missing" do
      @user = User.create(name: "gabe", password: "1234", password_confirmation: "1234")
      expect(@user).not_to be_valid
      @user.errors.full_messages
    end

    it "passwords not match" do
      @user = User.create(name: "gabe", email: "gabe@gmail.com", password: "1234", password_confirmation: "meow1")
      expect(@user).not_to be_valid
      @user.errors.full_messages
    end

    it "email is unique" do 
      @user = User.create(name: "gabe", email: "gabe@gmail.com", password: "1234", password_confirmation: "1234")
      @user1 = User.create(name: "gabe", email: "GabE@GMAIL.com", password: "1234", password_confirmation: "1234")
      expect(@user1.errors[:email].first).to eq('has already been taken')
    end

    it "passwords length invalid" do
      @user = User.create(name: "gabe", email: "gabe@gmail.com", password: "12", password_confirmation: "12")
      expect(@user).not_to be_valid
      @user.errors.full_messages
    end

    it "password is valid" do
      @user = User.create(name: "gabe", email: "gabe@gmail.com", password: "1234", password_confirmation: "1234")
      expect(@user).to be_valid
    end
  end