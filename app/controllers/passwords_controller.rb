class PasswordsController < ApplicationController
    before_action :require_user_logged_in!

    def edit

    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated"
        else
            redirect_to edit_password_path, notice: 'Error'
        end
    end

    def require_user_logged_in!
    redirect_to sign_in_path, alert: "You must be signed in to do that." if Current.user.nil?
    end

    private
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
    
end