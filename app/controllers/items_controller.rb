class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :display_categories
  
  # GET /items
  # GET /items.json
  def index
    @bought_items = Transaction.where(user_id: current_user.id).map {|trans| trans.item}
    @items = Item.where(user_id: current_user.id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new

  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @categories = display_categories
    @item = Item.new(item_params)

  #byebug
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully posted.' }

      else
        format.html { render :new}

      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully deleted.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:title, :description, :category, :price, :user_id, :photo)
    end

      def display_categories
        @categories = [
          "Electronics & Media",
          "Home & Garden",
          "Clothing, Shoes, & Accessories",
          "Baby & Kids",
          "Vehicles",
          "Toy, Games, & Hobbies",
          "Sports & Outdoors",
          "Collectibles & Art",
          "Pet Supplies",
          "Health & Beauty",
          "Wedding",
          "Business Equipment",
          "Tickets",
          "General"
        ]
      end


end
