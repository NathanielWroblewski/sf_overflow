require 'spec_helper'

describe Vote do

  let! (:question) { create() }
  let! (:vote) { create(:counter => 1) }
  
  context "for upvotes" do
    it "should increase vote count" do
      visit questions_path
      click_button('Upvote')
      expect('vote.sum').to change.from(0).to(1)
    end
  end




end
