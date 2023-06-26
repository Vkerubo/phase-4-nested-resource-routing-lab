class ItemsController < ApplicationController

def index
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      if user
        items = user.items
        render json: items, include: :user
      else
        render json: { error: "User not found" }, status: :not_found
      end
    else
      render json: { error: "Missing user_id parameter" }, status: :bad_request
    end
  end

  #def show
     #params[:user_id]
      #user = User.find_by(id: params[:id])
      #items = Item.user
      #render json: items, include: :user
   # end
  #end

end
