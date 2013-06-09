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
      pending "should belong to a user" do
        expect { answer.user_id }.to eq(answer.user.id)
      end

      pending "should have a description" do
        expect { answer.description }.to eq(answer.description)
      end
    end

    context "invalid input" do
      it "should raise an error if missing a user id"
      it "should raise an error if missing a description"
      it "should raise an error if missing answerable type"
      it "should raise an error if missing answerable id"
    end
  end

  describe "#new" do
    pending
  end

  describe "#edit" do
    pending
  end

  describe "#show" do
    pending
  end

  describe "#update" do
    pending
  end

  describe '#destroy' do
    pending
  end
end
