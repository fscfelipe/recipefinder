class Recipe
 include HTTParty
 	ENV["FOOD2FORK_KEY"] = 'bfa3661fffc1f13d8882464342c39fdd'
 	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
 	base_uri "http://#{hostport}/api"
 	default_params key: ENV["FOOD2FORK_KEY"]
 	format :json
 
 	def self.for term
 		get("/search", query: { q: term})["recipes"]
 	end
end