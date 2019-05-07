class UserlistsController < ApplicationController
  
  def index
  	@userlist = Userlist.all
  end

  def new
  	@userlist = Userlist.new
  end

  def create
  	@userlist = Userlist.new(userlist_params)
  	if @userlist.save
      helpers.write_entries_to_table
  		redirect_to draws_prompt_path
  	else
  		render :new
  	end
  end

  def show
  #called by show.html.erb
    @history = Winner.select(:competition).distinct
  end
  
end

private
 
  # used to allow create function to write to the db
  def userlist_params
    params.require(:userlist).permit(:name, :file)
  end

