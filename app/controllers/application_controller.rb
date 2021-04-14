class ApplicationController < ActionController::Base
  # devise利用の機能が使われる場合、その前にconfigure_perimitted_prametersが実行される。
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  # nameのデータ操作を許可するアクションメソッドが指定されている。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end 
end
