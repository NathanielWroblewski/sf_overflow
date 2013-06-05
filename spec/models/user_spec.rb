require 'spec_helper'


describe 'User' do
  let(:user) {User.new(username: "Me", password: "1234", email: "email@email.com")}

  context "sign-up" do
    it "should have username"
    it "should have password"
    it "should have email"
  end

end
