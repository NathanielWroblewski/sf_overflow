require 'spec_helper'


describe 'User' do
  # user = create(:user)
  
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
    it "should create a new question"
  end

  describe "answer a question" do
    it "should answer a question"
  end

  describe "edit a question" do
    it "should edit an existing question"
  end

  describe "edit an answer" do
    it "should edit an existing answer"
  end

  describe "delete a question" do
    it "should delete an existing question"
  end

  describe "delete an answer" do
    it "should delete an existing answer"
  end

  describe "view a question" do
    context "signed-in" do
    end
    
    context "NOT signed-in" do
    end

    AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH SO MANY TESTS AND CONTEXTS!!!!!!!
  end

end
