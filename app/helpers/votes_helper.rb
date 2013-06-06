module VotesHelper

  def votable_id_find(params)
    votable_id = params[:answer_id] 
    if votable_id
      votable = Answer.find(votable_id)
      q_id = votable.answerable_id
    else
      votable_id = params[:question_id] 
      votable = Question.find(votable_id)
      q_id = votable.id
    end
    [votable, q_id]
  end
end