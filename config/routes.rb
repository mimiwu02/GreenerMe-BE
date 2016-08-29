Rails.application.routes.draw do

# devise_for :users
#root
root "welcome#index"

#GreenerMe routes
get     "/messages"           => "messages#index"
get     "/messages/:zip"      => "messages#show"
post    "/messages/new"       => "messages#create"
put     "/messages/:name"      => "messages#update"
delete  "/messages/:name"      => "messages#destroy"
end
