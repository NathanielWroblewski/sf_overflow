class VotesController < ApplicationController
  include ApplicationHelper


  def answer_upvote
    answer = Answer.find(params[:answer_id])
    answer.votes << Vote.create(user_id: current_user.id, counter: 1)
    question = Question.find(answer.answerable_id)
    redirect_to question_path(question)
  end

  def answer_downvote
    answer = Answer.find(params[:answer_id])
    answer.votes << Vote.create(user_id: current_user.id, counter: -1)
    question = Question.find(answer.answerable_id)
    redirect_to question_path(question)
  end
end
