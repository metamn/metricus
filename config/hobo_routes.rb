# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Metricus::Application.routes.draw do


  # Resource routes for controller "tasks"
  get 'tasks(.:format)' => 'tasks#index', :as => 'tasks'
  get 'tasks/new(.:format)', :as => 'new_task'
  get 'tasks/:id/edit(.:format)' => 'tasks#edit', :as => 'edit_task'
  get 'tasks/:id(.:format)' => 'tasks#show', :as => 'task', :constraints => { :id => %r([^/.?]+) }
  post 'tasks(.:format)' => 'tasks#create', :as => 'create_task'
  put 'tasks/:id(.:format)' => 'tasks#update', :as => 'update_task', :constraints => { :id => %r([^/.?]+) }
  delete 'tasks/:id(.:format)' => 'tasks#destroy', :as => 'destroy_task', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "tasks"
  post 'campaigns/:campaign_id/tasks(.:format)' => 'tasks#create_for_campaign', :as => 'create_task_for_campaign'


  # Resource routes for controller "campaigns"
  get 'campaigns(.:format)' => 'campaigns#index', :as => 'campaigns'
  get 'campaigns/new(.:format)', :as => 'new_campaign'
  get 'campaigns/:id/edit(.:format)' => 'campaigns#edit', :as => 'edit_campaign'
  get 'campaigns/:id(.:format)' => 'campaigns#show', :as => 'campaign', :constraints => { :id => %r([^/.?]+) }
  post 'campaigns(.:format)' => 'campaigns#create', :as => 'create_campaign'
  put 'campaigns/:id(.:format)' => 'campaigns#update', :as => 'update_campaign', :constraints => { :id => %r([^/.?]+) }
  delete 'campaigns/:id(.:format)' => 'campaigns#destroy', :as => 'destroy_campaign', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "campaigns"
  get 'projects/:project_id/campaigns/new(.:format)' => 'campaigns#new_for_project', :as => 'new_campaign_for_project'
  post 'projects/:project_id/campaigns(.:format)' => 'campaigns#create_for_project', :as => 'create_campaign_for_project'


  # Resource routes for controller "documents"
  get 'documents(.:format)' => 'documents#index', :as => 'documents'
  get 'documents/new(.:format)', :as => 'new_document'
  get 'documents/:id/edit(.:format)' => 'documents#edit', :as => 'edit_document'
  get 'documents/:id(.:format)' => 'documents#show', :as => 'document', :constraints => { :id => %r([^/.?]+) }
  post 'documents(.:format)' => 'documents#create', :as => 'create_document'
  put 'documents/:id(.:format)' => 'documents#update', :as => 'update_document', :constraints => { :id => %r([^/.?]+) }
  delete 'documents/:id(.:format)' => 'documents#destroy', :as => 'destroy_document', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  put 'users/:id/accept_invitation(.:format)' => 'users#do_accept_invitation', :as => 'do_user_accept_invitation'
  get 'users/:id/accept_invitation(.:format)' => 'users#accept_invitation', :as => 'user_accept_invitation'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "projects"
  get 'projects(.:format)' => 'projects#index', :as => 'projects'
  get 'projects/new(.:format)', :as => 'new_project'
  get 'projects/:id/edit(.:format)' => 'projects#edit', :as => 'edit_project'
  get 'projects/:id(.:format)' => 'projects#show', :as => 'project', :constraints => { :id => %r([^/.?]+) }
  post 'projects(.:format)' => 'projects#create', :as => 'create_project'
  put 'projects/:id(.:format)' => 'projects#update', :as => 'update_project', :constraints => { :id => %r([^/.?]+) }
  delete 'projects/:id(.:format)' => 'projects#destroy', :as => 'destroy_project', :constraints => { :id => %r([^/.?]+) }

  namespace :admin do


    # Lifecycle routes for controller "admin/users"
    post 'users/invite(.:format)' => 'users#do_invite', :as => 'do_user_invite'
    get 'users/invite(.:format)' => 'users#invite', :as => 'user_invite'

    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end
