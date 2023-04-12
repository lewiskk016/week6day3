class UsersController < ApplicationController

    def index
        render plain: "I'm in the index action!"
    end

    def user_params
        params.require(:user).permit(:name, :email)
    end
    def create

        @user = User.new(user_params)
        if  @user.save
            render json: @user
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: params
    end
end
