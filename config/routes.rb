Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #web
  get '' => 'home#index', as: :home
  get 'about' => 'home#about', as: :about
  get 'dynamic' => 'home#dynamic', as: :dynamic
  get 'dynamic/:id' => 'home#detail', as: :detail
  get 'contact' => 'home#contact', as: :contact
  get 'jobs' => 'home#jobs', as: :jobs
  get 'news' => 'home#news', as: :news
  get 'service' => 'home#service', as: :service
  get 'faq' => 'home#faq', as: :faq
  get 'agent' =>'home#agent', as: :agent
  get 'wap' => 'home#wap', as: :wap

  get 'download' => 'download#index', as: :download

  post 'feedback' => 'home#feedback', as: :feedback
end
