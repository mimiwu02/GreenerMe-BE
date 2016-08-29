Rails.application.routes.draw do

devise_for :users
#root
root "welcome#index"

#GreenerMe routes
get     "/green"           => "green#index"
get     "/green/:zip"      => "green#show"
post    "/green/new"       => "green#create"
put     "/unicorns/:zip"   => "green#update"
delete  "/unicorns/:zip"   => "green#destroy"
end
