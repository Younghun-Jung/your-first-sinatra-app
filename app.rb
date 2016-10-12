require "sinatra"

# verb path do
# 	# do something
# end


get "/" do
	# puts "You Requested the root path" # in Terminal
	# "You Requested the root path" # in Browser

	erb :home
end

get "/about" do
	"This app is our first Sinatra App!"
	# erb :about
end

get "/roll-die" do
	"Your die roll is....#{rand(1...7)}"
end

# get "/cat" do
# 	"Meow Meow I AM CAT"
# end

get "/r/:name" do
	name = params[:name].capitalize
	"Hello there #{name}"
end

get "/square/:num" do
	num = params[:num].to_i
	"#{num * num}"
end

get "/love" do
	"<h3>I love Sinatra!!</h3>"
	end

# page를 html파일로 제작하고, send-file 로 해당 파일로 보낸다.
get "/cat" do
	send_file "cat.html"
end

# home erb
# get "/homeErbTesting" do
# 	erb :home
# end





















get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end