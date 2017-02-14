class RecipeStepsIngredientsController < ApplicationController
  before_action :set_recipe_steps_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /recipe_steps_ingredients
  # GET /recipe_steps_ingredients.json
  def index
    @recipe_steps_ingredients = RecipeStepsIngredient.all
  end

  # GET /recipe_steps_ingredients/1
  # GET /recipe_steps_ingredients/1.json
  def show
  end

  # GET /recipe_steps_ingredients/new
  def new
    @recipe_steps_ingredient = RecipeStepsIngredient.new
  end

  # GET /recipe_steps_ingredients/1/edit
  def edit
  end

  # POST /recipe_steps_ingredients
  # POST /recipe_steps_ingredients.json
  def create
    @recipe_steps_ingredient = RecipeStepsIngredient.new(recipe_steps_ingredient_params)

    respond_to do |format|
      if @recipe_steps_ingredient.save
        format.html { redirect_to recipe_steps_ingredients_path, notice: 'Recipe steps ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_steps_ingredient }
      else
        format.html { render :new }
        format.json { render json: @recipe_steps_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_steps_ingredients/1
  # PATCH/PUT /recipe_steps_ingredients/1.json
  def update
    respond_to do |format|
      if @recipe_steps_ingredient.update(recipe_steps_ingredient_params)
        format.html { redirect_to recipe_steps_ingredients_path, notice: 'Recipe steps ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_steps_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @recipe_steps_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_steps_ingredients/1
  # DELETE /recipe_steps_ingredients/1.json
  def destroy
    @recipe_steps_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to recipe_steps_ingredients_url, notice: 'Recipe steps ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_steps_ingredient
      @recipe_steps_ingredient = RecipeStepsIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_steps_ingredient_params
      params.require(:recipe_steps_ingredient).permit(:step_id, :ingredient_id, :step_ingredient_quantity, :ingredient_units_id)
    end
end
