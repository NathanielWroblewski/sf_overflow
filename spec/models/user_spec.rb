require 'spec_helper'


describe 'User' do
  let(:user) {User.new(username: "Me", password: "1234", email: "email@email.com")}

  it "should have username, password, and email" do
   write test
  end

end
