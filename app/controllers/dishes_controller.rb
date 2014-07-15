class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = Dish.all
  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
  end

  # GET /dishes/new
  def new
    @dish = current_user.dishes.build
  end

  # GET /dishes/1/edit
  def edit
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = current_user.dishes.build(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Prevent users from accessing edit functionality via URLs
    def correct_user
      if current_user
        @dish = current_user.dishes.find_by(id: params[:id])
        redirect_to dishes_path, notice: "You are not authorized to make changes to that dish" if @dish.nil?
      else
        redirect_to new_user_session_path, notice: "Please sign in to continue."
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :description, :image)

    end

end
