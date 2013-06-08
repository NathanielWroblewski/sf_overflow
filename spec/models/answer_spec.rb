require 'spec_helper'

describe Answer do

  #Shoulda Tests
  it { should belong_to(:user) } 
  it { should belong_to(:answerable) }
  it { should have_many(:answers) }
  it { should have_many(:votes) }
  it { should validate_presence_of(:description) }

  #Method Tests

  let(:description) {"hello"}
  let(:answer) { FactoryGirl.create(:answer) }

  describe "#create" do

    context "valid input" do
      it "should belong to a user" do
        expect { answer.user_id }.to eq(answer.user.id)
      end

      it "should have a description" do
        expect { answer.description }.to eq(answer.description)
      end
    end

    context "without valid input" do
      it "raises error without a description"
      it "raises error without a user"
      it "raises error with answerable type"
      it "raises error with answerable id"
    end
  end
end


  #     end


#   context "user signup" do
#     desribe "valid input" do
#       it "errors show on the sinpup page" do
#         pending
#       end
#     end
#     describe "invalid input" do
#       it "redirect user to the"
#     end
#   end
#   describe "POST /answer" do
#     it "creates a answer" do
#       post_via_redirect answer_path, :answer => { :description => "mow lawn" }
#       response.body.should include("mow lawn")
#       #need to go through form! Use capybara
#     end
#   end 

#   describe '#destroy' do

#     context 'when answer is found' do
#       it 'responds with 200'
#       it 'shows the answer'
#     end

#     context 'when answer is not found' do
#       it 'responds with 404'
#     end

#     context 'when answer is not owned' do
#       it 'responds with 404'
#     end
#   end
# #database_cleaner

