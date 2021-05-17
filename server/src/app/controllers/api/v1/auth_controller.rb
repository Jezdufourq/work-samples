class Api::V1::AuthController < ApplicationController
    # Ensures user can create an account
    skip_before_action :authorized, only: [:create]

    def create
        user = User.find_by(email: user_login_params[:email])
        if user && user.authenticate(user_login_params[:password])
            token = issue_token(user)
            render json: {user: {UserSerializer.new(user), jwt: token}
        else
            render json: {error: 'The user you are after could not be found'}, status: 401
        end
    end

    def show
        user = User.find_by(id: user_id)
        if logged_in?
            render json: user
        else
            render json: { error: 'No user could be found'}, status: 401
        end
    end

    # private login parameters for the login route
    private
    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end
