require 'vote_controller_helper'
class VotesController < ApplicationController
  include VotesHelper

  def upvote
    votable_type = votable_type(params)
    tally_votes(votable_type, 1)
    redirect_to votable_type
  end

  def downvote
    votable_type = votable_type(params)
    tally_votes(votable_type, -1)
    redirect_to votable_type
  end
end
