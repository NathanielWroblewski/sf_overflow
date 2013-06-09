require 'spec_helper'

describe User do

  it { should have_many(:questions) }
  it { should have_many(:answers) }
  it { should have_many(:votes) }

  it { should validate_presence_of(:email) }
  it { should validate_format_of(:email).with( /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/).with_message(/email is invalid/) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }


  describe '#create' do
    pending
  end

  describe "#new" do
    pending
  end

  describe "#show" do
    pending
  end

end
