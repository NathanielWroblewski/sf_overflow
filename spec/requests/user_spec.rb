require 'spec_helper'


describe 'User' do
  let (:user) { create(:user) }
  
  describe "sign-up" do
    context "successful sign-up" do
      it "should route to profile page" do
        visit root_path
        click_link 'Signup'
        fill_in 'user_username', with: "test"
        fill_in 'user_email', with: "test@email.com"
        fill_in 'user_password', with: "1234"
        click_button 'Create User'
        current_path.should == user_path(user)
      end
    end

    context "unsuccessful sign-up" do
      it "should return an error if the username or email is not unique" do
        visit root_path
        click_link 'Signup'
        fill_in 'user_username', with: "test"
        fill_in 'user_email', with: "test@email.com"
        fill_in 'user_password', with: "1234"
        click_button 'Create User'
        current_path.should == user_path(user)
      end
      it "should return an error when user ommits a required field" do

      end
    end
  end

  describe "sign-in" do
    context "successful sign-in" do
      it "should route to profile page" do
        visit root_path
        fill_in('email', :with => user.email)
        fill_in('password', :with => user.password)
        click_button('Submit')
        current_path.should == user_path(user)
      end
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

  describe "view a question" do #AHHHHHHHHH SO MANY TESTS AND CONTEXTS!!!!!!!
    context "signed-in" do
      it "should allow user add an answer"
    end

    context "NOT signed-in" do
      it "should not allow user to add an answer"
    end
  end
end
