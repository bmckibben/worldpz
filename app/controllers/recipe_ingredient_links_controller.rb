class RecipeIngredientLinksController < ApplicationController
  before_action :set_recipe_ingredient_link, only: [:show, :edit, :update, :destroy]

  # GET /recipe_ingredient_links
  # GET /recipe_ingredient_links.json
  def index
    @recipe_ingredient_links = RecipeIngredientLink.all
  end

  # GET /recipe_ingredient_links/1
  # GET /recipe_ingredient_links/1.json
  def show
  end

  # GET /recipe_ingredient_links/new
  def new
    @recipe_ingredient_link = RecipeIngredientLink.new
  end

  # GET /recipe_ingredient_links/1/edit
  def edit
  end

  # POST /recipe_ingredient_links
  # POST /recipe_ingredient_links.json
  def create
    @recipe_ingredient_link = RecipeIngredientLink.new(recipe_ingredient_link_params)

    respond_to do |format|
      if @recipe_ingredient_link.save
        format.html { redirect_to @recipe_ingredient_link, notice: 'Recipe ingredient link was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_ingredient_link }
      else
        format.html { render :new }
        format.json { render json: @recipe_ingredient_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_ingredient_links/1
  # PATCH/PUT /recipe_ingredient_links/1.json
  def update
    respond_to do |format|
      if @recipe_ingredient_link.update(recipe_ingredient_link_params)
        format.html { redirect_to @recipe_ingredient_link, notice: 'Recipe ingredient link was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_ingredient_link }
      else
        format.html { render :edit }
        format.json { render json: @recipe_ingredient_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_ingredient_links/1
  # DELETE /recipe_ingredient_links/1.json
  def destroy
    @recipe_ingredient_link.destroy
    respond_to do |format|
      format.html { redirect_to recipe_ingredient_links_url, notice: 'Recipe ingredient link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_ingredient_link
      @recipe_ingredient_link = RecipeIngredientLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_ingredient_link_params
      params.require(:recipe_ingredient_link).permit(:recipe_id, :recipe_ingredient_id, :ingredient_quantity, :recipe_ingredient_units_id)
    end
end
