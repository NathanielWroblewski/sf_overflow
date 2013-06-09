require 'spec_helper'

describe Question do

  it { should belong_to(:user) }

  it { should have_many(:answers) }
  it { should have_many(:votes) } 

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:description) }

  describe "#index" do
    pending
  end

  describe "#create" do
    pending
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

  describe "#destroy" do
    pending
  end

end
