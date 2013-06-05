require 'spec_helper'

describe Answer do
  let(:answer) { FactoryGirl.create :answer }

  context 'reply to question'
  it "should have a parent answer id"
  it "should have a description" 
  it "should belong to a user"

  describe ".children"
  it "should deisplay child posts"

  context "when logged in"
  it "should redirect to login page"

  context "when logged out"
  it "should post the comment"

  describe "GET /answer" do
    it "displays answers" do
      Answer.create!(:description "hello there!")
      visit task_path
      response.body.should include("hello there!")
    end
  end

  describe "POST /answer" do
    it "creates a answer" do
      post_via_redirect tasks_path, :task => { :name => "mow lawn" }
      response.body.should include("mow lawn")
      #need to go through form! Use capybara
    end
  end 



end
