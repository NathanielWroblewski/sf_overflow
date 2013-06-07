require 'spec_helper'

describe Answer do
  let(:description) {"hello"}
  let(:answer) { FactoryGirl.create(:answer) }
  context "#create" do

    describe "with valid input" do
      it "answer belongs to a user" do
        answer.user_id.should eq(answer.user.id)
      end

      it "answer has a description" do
        expect(answer.description).to eq(answer.description)

        context "with valid input" do
          it "creates a question with user_id" do
            answer.user_id.should eq(user.id)
          end

          describe "without valid input" 
          it "raises error without a description"
          it "raises error without a user"
          it "raises error with answerable type"
          it "raises error with answerable id"

        end



      end


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
end
