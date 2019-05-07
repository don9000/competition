module DrawsHelper

	# write the names of the participants to the CompetitionDraws table
    def write_entries_to_table
      entries_array = output_file_to_array(file_path)
      entries_array.each do |participant|
      	entry = Entry.create(competition: comp_name, entrant: participant)
      end
    end

  # draw the selected number of winners  
    def draw_winners(number)    
       winner = Entry.where(competition: comp_name).sample(number.to_i)
       order = 1
       winner.each do |individual|
         winner_to_table = Winner.create(competition: individual[:competition], winner: individual[:entrant], order: order)
         order+=1
       end
      end

     def return_winners
      winners = Winner.where(competition: comp_name)
     end 

     def return_historical_winners(competition)
      winners = Winner.where(competition: competition)
     end      
    
    # determine the number of contestants entered into the draw 
    def number_of_entries_to_table
      entries_array = Entry.where("competition = '#{comp_name}'").count
    end   
end
