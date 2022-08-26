class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    
    

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :telephone, :image, :admin, :atelier, 
                                          :description_atelier, :logo, :telephone_atelier, :slogan])

        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :telephone, :image, :admin, :atelier, 
                                          :description_atelier, :logo, :telephone_atelier, :slogan])
    end
end
