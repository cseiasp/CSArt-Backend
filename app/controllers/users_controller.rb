class UsersController < ApplicationController
 
    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])

        if user
            render json: {user: user, bids: user.all_bids}
        else
            render json: { errors: user.errors.full_messages}, status: :not_acceptable
        end

    end

    def create
        user = User.find_or_create_by(user_params)

        if user
            render json: user
        else
            render json: { errors: user.errors.full_messages}, status: :not_acceptable
        end
    end

    private
 
    def user_params
      params.require(:user).permit(:email)
    end

end
