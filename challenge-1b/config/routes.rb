Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'data_process#index'

  post 'process_now' => 'data_process#process_file', as: :process_file_now

end
