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

  def voted(votable)
    votable.votes.find_by_user_id(current_user.id)
  end


  def voter(params, score)
    votable, q_id = votable_id_find(params)[0], votable_id_find(params)[1]
    vote = voted(votable)
    if voted(votable)
      user_vote = votable.votes.find_by_user_id(current_user.id)
      if vote.counter == 0
        Vote.update(user_vote.id, :counter => score)
      else
        Vote.update(user_vote.id, :counter => 0)
      end
    else
      votable.votes << Vote.create(user_id: current_user.id, counter: score)
    end
    question = Question.find(q_id)
    redirect_to question_path(question)
  end
end
