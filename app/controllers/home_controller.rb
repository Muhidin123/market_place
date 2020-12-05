class HomeController < ApplicationController

    def index
        @items = Item.where.not(user_id: current_user.id)
    end
end
