class Textbook < ApplicationRecord

	belongs_to :user
	#Find textbooks in section CATEGORY with identifier INPUT
	def self.search(category,input)

	  #searching for titles
	  if category == "Title"
	    where('title LIKE ?', "%#{input}%")

	  #Searching for ISBN
	  elsif category == "ISBN-10"
	  	where('isbn_10 like ?', "%#{input}%")

	  elsif category == "ISBN-10"
	  	where('isbn_13 like ?', "%#{input}%")

	  #Searching fo Author
	  elsif category == "Author"
	  	where('author LIKE ?', "%#{input}%")

	  # Can add other search attributes if necessecary

	  else 
	    all
	    #endif
	  end

	#end search
	end

#end Textbook
end

