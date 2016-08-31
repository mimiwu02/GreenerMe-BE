Rails.application.routes.draw do

# devise_for :users
#root
root "welcome#index"

#GreenerMe routes
get     "/messages"           => "messages#index"
get     "/messages/:name"      => "messages#show"
post    "/messages/new"       => "messages#create"
put     "/messages/:id"      => "messages#update"
delete  "/messages/:id"      => "messages#destroy"
end
