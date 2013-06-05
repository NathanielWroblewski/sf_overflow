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

  # describe "GET /answer" do
  #   it "displays answers" do
  #     Answer.create!(:description "hello there!")
  #     visit task_path
  #     response.body.should include("hello there!")
  #   end
  # end

  describe "POST /answer" do
    it "creates a answer" do
      post_via_redirect question_path, :answer => { :description => "mow lawn" }
      response.body.should include("mow lawn")
      #need to go through form! Use capybara
    end
  end 

#   describe '#destroy' do

#     context 'when resource is found' do
#       it 'responds with 200'
#       it 'shows the resource'
#     end

#     context 'when resource is not found' do
#       it 'responds with 404'
#     end

#     context 'when resource is not owned' do
#       it 'responds with 404'
#     end
#   end
# #database_cleaner
end
