require 'spec_helper'

describe 'Answer' do
  let(:user) { create(:user) }
  let(:question) { create(:question) }
  let(:answer) { create(:answer) }

  context 'when user is not logged in', :js => true do
    it 'should not create an answer' do
      visit question_path(question)
      sleep(2)

      fill_in 'answer[description]', :with => 'testing yeah'
      
      sleep(2)

      first('.answer_form').click_on('Create Answer')

      sleep 2

      page.should_not have_content('testing yeah')
    end
  end

  context 'when user is logged in' do
    before do
      click_link 'Signup'
      fill_in 'Username', :with => user.username
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => user.password
      click_on 'Create User'
    end

    it 'should create an answer' do
      pending
    end

    it 'should not create a blank answer' do
      pending
    end
  end
end
