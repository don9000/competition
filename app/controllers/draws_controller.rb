class DrawsController < ApplicationController
  
  def result
  	@number_of_winners = params[:winners]
  	@winners = helpers.draw_winners(@number_of_winners)
  	redirect_to draws_winners_path
  end

  def prompt
  	@options = (1..15).to_a
  end

  def winners
  	@winners = helpers.return_winners
  end

  def historical
  	@competition = params[:competition]
  	@history = helpers.return_historical_winners(@competition)
  end
end
