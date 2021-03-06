class RecipesController < ApplicationController

  before_action :authenticate_user!, except: [:show]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  
  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all.order(:sort_order)
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    #@recipe.active = 1
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:category_id, :recipe_name, :recipe_description,
        :active, :sort_order, :prep_minutes, :cook_minutes, :servings_quantity,
        recipe_images_attributes: [:id, :image_url, :_destroy],
        recipe_steps_attributes: [:id, :step_order, :step_instruction, :_destroy],
        recipe_ingredient_links_attributes: [:id, :recipe_id, :recipe_ingredient_id, :ingredient_quantity, :recipe_ingredients_unit_id, :_destroy])
    end
end
