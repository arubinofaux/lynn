class Users::RegistrationsController < Devise::RegistrationsController

  protected
    def after_sign_up_path_for(resource)
      dashboard_path
    end

    def after_update_path_for(resource)
      dashboard_path
    end

  private
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :phone, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :phone, :email, :password, :password_confirmation, :current_password)
    end
end
