module VotesHelper

  def votable_type(params)
    answer_id = params[:answer_id]
    answer_id ? Answer.find(answer_id) : Question.find(params[:question_id])
  end

  def question_id(votable_type)
    votable_type.is_a?(Question) ? votable_type.id : votable_type.question_id
  end

  def find_previous_user_vote(votable_type)
    @vote = votable_type.votes.find_by_user_id(current_user.id)
  end

  def no_votes?
    @vote && @vote.counter == 0
  end

  def voted_before?
    @vote
  end

  def new_vote(votable_type, score)
    votable_type.votes << Vote.create(:user_id => current_user.id, :counter => score)
  end

  def vote(score)
    Vote.update(@vote.id, :counter => score)
  end

  def tally_votes(votable_type, score)
    find_previous_user_vote(votable_type)
    if no_votes?
      vote(score)
    elsif voted_before?
      vote(0)
    else
      new_vote(votable_type, score)
    end
  end
end
