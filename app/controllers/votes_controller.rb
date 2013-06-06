class VotesController < ApplicationController
  include ApplicationHelper
  include VotesHelper


  def upvote
    voter(params, 1)
  end

  def downvote
    voter(params, -1)
  end

  private

  def voter(params, score)
    votable, q_id = votable_id_find(params)[0], votable_id_find(params)[1]
    votable.votes << Vote.create(user_id: current_user.id, counter: score)
    question = Question.find(q_id)
    redirect_to question_path(question)
  end
end
