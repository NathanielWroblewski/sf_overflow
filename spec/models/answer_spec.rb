require 'spec_helper'

describe Answer do
  let(:description) {"hello"}
  let(:answer) { FactoryGirl.create(:user) }
  let(:user) { answer.user }
  context "#initialize" do

    describe "invalid input" do
      it ""
      it ""
    end
    describe "vali"
  end
  context 'reply to question'

  it "should have a parent answer id"
  it "should have a description" 

  describe ".children"
  it "should display child posts"

  context "when logged in"
  it "should redirect to login page"

  context "when logged out"
  it "should post the comment"

  # describe "GET /answer" do
  #   it "displays answer" do
  #     Answer.create!(:description "hello there!")
  #     visit task_path
  #     response.body.should include("hello there!")
  #   end
  # end



# let(:account) {Account.new(acct_number, starting_balance)}
#   let(:acct_number) { '1123456789' }
#   let(:starting_balance) { 100 }

  describe "#initialize" do

    context "with valid input" do
      it "creates a question with user_id" do
        answer.user_id.should eq(user_id)
      end

      it 
    end

    
  end
  context "user signup" do
    desribe "valid input" do
      it "errors show on the sinpup page" do
        pending
      end
    end
    describe "invalid input" do
      it "redirect user to the"
    end
  end
  describe "POST /answer" do
    it "creates a answer" do
      post_via_redirect question_path, :answer => { :description => "mow lawn" }
      response.body.should include("mow lawn")
      #need to go through form! Use capybara
    end
  end 

  describe '#destroy' do

    context 'when answer is found' do
      it 'responds with 200'
      it 'shows the answer'
    end

    context 'when answer is not found' do
      it 'responds with 404'
    end

    context 'when answer is not owned' do
      it 'responds with 404'
    end
  end
#database_cleaner
end
