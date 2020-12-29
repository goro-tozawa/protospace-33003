class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :authenticate_user!を追加
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :move_to_index, except: :index
  # before_action :move_to_index, except: [:index, :show]を追加
  
 

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
  # private
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name , :profile, :occupation, :position])
  # endを追加
  
end
