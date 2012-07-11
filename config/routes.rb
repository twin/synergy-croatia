SynergyCroatia::Application.routes.draw do
  scope "(:locale)", :locale => /en|hr/ do
    root :to => "pages#index"

    get "news",         :to => "pages#news"
    get "about",        :to => "pages#about"
    get "archive",      :to => "pages#archive"
    get "testimonials", :to => "pages#testimonials"
    get "partners",     :to => "pages#partners"

    resources :trainings

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
