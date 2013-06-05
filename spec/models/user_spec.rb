require 'spec_helper'


describe 'User' do
  Factory.create(:user)
  
  context "sign-up" do
    it "should have username"
    it "should have password"
    it "should have email"
  end



end
