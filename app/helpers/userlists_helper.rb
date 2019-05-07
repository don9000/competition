module UserlistsHelper

   # constructs a string which specifies the path to the latest uploaded file 
   def file_path
     file = File.join(Rails.root, 'public', 'uploads', Userlist.last[:file])
   end

   # this holds the name of the last competition for which a file was uploaded
   # the name is taken from the last entry in the Userlist table
   def comp_name
   	 if Userlist.last == nil 
      "No previous competition draws, you will be the first to draw a winner :)"
     else
     Userlist.last[:name]
   end
   end

   # creates an array from the file that was uploaded
   # each line should become an element of the array 
   def output_file_to_array(raw_file)
     file_to_read = File.read(raw_file)
     file_to_array = file_to_read.split("\n")
   end

    def entries
    entries_object = Entry.all
    end

end
