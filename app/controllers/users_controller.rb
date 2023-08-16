class UsersController < ApplicationController
    def show 
        user = User.find_by(id: params[:id])
        render json: user.as_json(
          only: [:id, :username, :city],
          include: {
            items: {
              only: [:id, :name, :price, :description]
            }
          }
        ), status: :ok
    end
end
