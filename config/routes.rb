Rails.application.routes.draw do

# devise_for :users
#root
root "welcome#index"

#GreenerMe routes
get     "/messages"           => "messages#index"
get     "/messages/:name"     => "messages#show"
get     "/messages/post/:zip" => "messages#zip"
post    "/messages/new"       => "messages#create"
put     "/messages/:id"       => "messages#update"
delete  "/messages/:id"       => "messages#destroy"



#Wunderground API route

post     "/weather"            => "weather#trigger_weather_api"

end
