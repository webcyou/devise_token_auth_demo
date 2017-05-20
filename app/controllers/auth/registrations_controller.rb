module Auth
  class RegistrationsController < DeviseTokenAuth::RegistrationsController

    private
    def sign_up_params
      params.permit(:name, :email, :team, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :email, :team)
    end

  end
end
