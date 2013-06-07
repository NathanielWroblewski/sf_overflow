require 'spec_helper'

describe Vote do

  let (:user) { create(:user)}
  let (:question) { create(:question) }
  let (:vote) { create(:vote_question) }
  let (:answer) { create(:answer) }
  let (:vote) { create(:vote_answer) }

  context "vote on question" do
    before do
      visit root_path
      fill_in('email', :with => user.email)
      fill_in('password', :with => user.password)
      click_button('Submit')
      visit question_path(question)
    end

    it "should increase vote count" do
      expect {
        click_button('Upvote')
      }.to change{question.sum_votes}.from(0).to(1)
    end

    it "should decrease vote count" do
      expect {
        click_button('Downvote')
      }.to change{question.sum_votes}.from(0).to(-1)
    end

    it "twice upvote should leave the count to where it was" do
      click_button('Upvote')
      page.find("#question-vote").should have_content("1")
      click_button('Upvote')
      page.find("#question-vote").should have_content("0")
    end

    it "twice should leave the count to where it was" do
      click_button('Downvote')
      page.find("#question-vote").should have_content("-1")
      click_button('Downvote')
      page.find("#question-vote").should have_content("0")
    end

    it "upvote followed by downvote should leave the count to where it was" do
      click_button('Upvote')
      page.find("#question-vote").should have_content("1")
      click_button('Downvote')
      page.find("#question-vote").should have_content("0")
    end

    it "downvote followed by downvote should leave the count to where it was" do
      click_button('Downvote')
      page.find("#question-vote").should have_content("-1")
      click_button('Upvote')
      page.find("#question-vote").should have_content("0")
    end
  end

  context 'vote on answer' do
    before do
      visit root_path
      fill_in('email', :with => user.email)
      fill_in('password', :with => user.password)
      click_button('Submit')
      visit question_path(question)
      fill_in('answer[description]', :with => answer.description)
      click_button('Create Answer')
    end

    it "should increase vote count" do
      page.find(".answer").click_button('Upvote')
      page.find(".answer-vote").should have_content("1")
    end

    it "should decrease vote count" do
      page.find(".answer").click_button('Downvote')
      page.find(".answer-vote").should have_content("-1")
    end

    it "twice upvote should leave the count to where it was" do
      page.find(".answer").click_button('Upvote')
      page.find(".answer-vote").should have_content("1")
      page.find(".answer").click_button('Upvote')
      page.find(".answer-vote").should have_content("0")
    end

    it "twice should leave the count to where it was" do
      page.find(".answer").click_button('Downvote')
      page.find(".answer-vote").should have_content("-1")
      page.find(".answer").click_button('Downvote')
      page.find(".answer-vote").should have_content("0")
    end

    it "upvote followed by downvote should leave the count to where it was" do
      page.find(".answer").click_button('Upvote')
      page.find(".answer-vote").should have_content("1")
      page.find(".answer").click_button('Downvote')
      page.find(".answer-vote").should have_content("0")
    end

    it "downvote followed by downvote should leave the count to where it was" do
      page.find(".answer").click_button('Downvote')
      page.find(".answer-vote").should have_content("-1")
      page.find(".answer").click_button('Upvote')
      page.find(".answer-vote").should have_content("0")
    end

    it "should decrease vote count" do
      expect {
        first('#answer-form').click_button('Downvote')
      }.to change{Answer.last.sum_votes}.from(0).to(-1)
    end
  end
end
