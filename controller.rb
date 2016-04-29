require 'sinatra'

get '/'  do 
	@title = "Choosing Your Cause"
	@story = "You've been thinking for years about being in a position to financially support a charity. It's important that you pick the right group. 

	Let's start here: veterans, after school programs, or homeless shelters?"
	@choice_1 = "Veterans"
	@choice_2 = "After_School_Programs"
	@choice_3 = "Homeless_Shelters"
	erb :index
end
	
get '/decision/:choice' do
	case params[:choice]
	when "Veterans"
	@title = "Choosing Your Cause"
	@choice_1 = "Go_to_a_Veteran_Parade."
	@choice_2 = "Visit_a_veteran_clinic."
	erb :index


when "Go_to_a_Veteran_Parade."
	@story = "You enjoyed the parade. Would you like to donate?"
	@choice_1 = "Yes"
	@choice_2 = "No"
	erb :index

when "Yes"
	@story = "Thank you for your donation!"
	erb :index
when "No"
	@story = "Thank you for your time."
	erb :index

when "Visit_a_veteran_clinic."
	@story = "You met a lot of nice veterans. Would you like to donate?"
	@choice_1 = "Sí"
	@choice_2 = "Nö"
erb :index

when "Sí"
	@story = "Gracias, amigo."
	erb :index
when "Nö"
	@story = "Gracias, por su tiempo."
	erb :index

	when "After_School_Programs"
	@title = "Choosing Your Cause"
	@choice_1 = "Meet_program_coordinators"
	erb :index

when "Meet_program_coordinators"
	@story = "Would you like to donate?"
	@choice_1 = "Oui"
	@choice_2 = "Non"
	erb :index
when "Oui"
	@story = "Thank you kindly!"
	erb :index

when "Non"
	@story = "Thank you for your time."
	erb :index


	when "Homeless_Shelters"
	@title = "Choosing Your Cause"
	@choice_1 = "Visit_Shelter"
	erb :index

when "Visit_Shelter"
	@title = "Choosing Your Cause"
	@story = "You are moved by seeing their living conditions. Do you donate?"
	@choice_1 = "Yes!"
	@choice_2 = "No."
	erb :index
when "Yes!"
	@story = "Thank you so much!"
	erb :index
when "No."
	@story = "Thank you for your time."
	erb :index
	end
end


