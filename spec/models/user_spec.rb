require 'spec_helper'


describe 'User' do
  user = create(:user)
  
  describe "sign-up" do
    context "successful sign-up" do
      it "should route to profile page"
    end

    context "unsuccessful sign-up" do
      it "should return an error if the username or email is not unique"
      it "should return an error when user ommits a required field"
    end
  end

  describe "sign-in" do
    context "successful sign-in" do
      it "should route to profile page"
    end

    context "unsuccessful sign-in" do
      it "should return an error if username doesn't exist in database"
      it "should return an error if passwords don't match"
      
   end

 end

 describe "create a question" do

 end

 describe "answer a question" do

 end

 describe "edit a question" do

 end

 describe "edit an answer" do

 end

 describe "delete a question" do

 end

 describe "delete an answer" do

 end

 describe "view a question" do

 end

end
