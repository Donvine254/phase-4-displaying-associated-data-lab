class ItemsController < ApplicationController
    def index 
        render json: Item.all.as_json(
          only: [ :id, :name, :price, :description],
          include: {
            user: {
              only: [:id, :username, :city,]
            }
          }
        ), status: :ok
    end
end
