class RecipeIngredientsUnitsController < ApplicationController
  before_action :set_recipe_ingredients_unit, only: [:show, :edit, :update, :destroy]

  # GET /recipe_ingredients_units
  # GET /recipe_ingredients_units.json
  def index
    @recipe_ingredients_units = RecipeIngredientsUnit.all
  end

  # GET /recipe_ingredients_units/1
  # GET /recipe_ingredients_units/1.json
  def show
  end

  # GET /recipe_ingredients_units/new
  def new
    @recipe_ingredients_unit = RecipeIngredientsUnit.new
  end

  # GET /recipe_ingredients_units/1/edit
  def edit
  end

  # POST /recipe_ingredients_units
  # POST /recipe_ingredients_units.json
  def create
    @recipe_ingredients_unit = RecipeIngredientsUnit.new(recipe_ingredients_unit_params)

    respond_to do |format|
      if @recipe_ingredients_unit.save
        format.html { redirect_to recipe_ingredients_units_path, notice: 'Recipe ingredients unit was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_ingredients_unit }
      else
        format.html { render :new }
        format.json { render json: @recipe_ingredients_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_ingredients_units/1
  # PATCH/PUT /recipe_ingredients_units/1.json
  def update
    respond_to do |format|
      if @recipe_ingredients_unit.update(recipe_ingredients_unit_params)
        format.html { redirect_to recipe_ingredients_units_path, notice: 'Recipe ingredients unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_ingredients_unit }
      else
        format.html { render :edit }
        format.json { render json: @recipe_ingredients_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_ingredients_units/1
  # DELETE /recipe_ingredients_units/1.json
  def destroy
    @recipe_ingredients_unit.destroy
    respond_to do |format|
      format.html { redirect_to recipe_ingredients_units_url, notice: 'Recipe ingredients unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_ingredients_unit
      @recipe_ingredients_unit = RecipeIngredientsUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_ingredients_unit_params
      params.require(:recipe_ingredients_unit).permit(:ingredient_unit_name)
    end
end
