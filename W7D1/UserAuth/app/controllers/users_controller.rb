class UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.save
            login!(@user)
            redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages
        end
    end

    def new
        @user = User.new
        render :new
    end

    


    private
    
    def user_params
        params.require(:user).permit(:username, :password)
    end
end