class QuestionsController < ApplicationController
  before_action :authorize, only: [:index, :show]

  def index
    # Code for listing all users goes here.
    # @user = User.find(params[:user_params])
    # session[:user_id] = @user.id
    @questions= Question.all
    :index
  end

  # def new
  #   # Code for new user form goes here.
  #   @recipe = Recipe.new
  #   :new
  # end
  #
  # def create
  #   # Code for creating a new user goes here.
  #   @recipe = Recipe.new(recipe_params)
  #   if @recipe.save
  #     redirect_to root_path
  #   else
  #     render :new
  #
  # end
  #
  # def edit
  #   # Code for edit user form goes here.
  #   @recipe = Recipe.find(params[:id])
  #   render :edit
  # end
  #
  # def show
  #   # Code for showing a single user goes here.
  #
  # @recipe = Recipe.find(params[:id])
  #
  #   @ingredients = []
  #   @tags = []
  #   Ingredient.all.each do |ingredient|
  #     if @recipe.ingredients.exclude?(ingredient)
  #       @ingredients.push(ingredient.name)
  #
  #     end
  #   end
  #
  #   Tag.all.each do |tag|
  #     if @recipe.tags.exclude?(tag)
  #       @tags.push(tag.name)
  #
  #     end
  #   end
  #
  # render :show
  # end
  #
  # def update
  #   # Code for updating an user goes here.
  #
  #   @recipe= Recipe.find(params[:id])
  #     if @recipe.update(recipe_params)
  #       redirect_to recipe_path
  #     else
  #       render :edit
  #     end
  # end
  #
  # def destroy
  #   # Code for deleting an user goes here.
  #   @recipe = Recipe.find(params[:id])
  #   @recipe.destroy
  #   redirect_to root_path
  # end
  #
  # def add
  #   @recipe = Recipe.find(params[:id])
  #
  #   if params[:ingredient]
  #
  #   ingredient = Ingredient.where(name: params[:ingredient].fetch("ingredient")).first
  #
  #   @recipe.ingredients << ingredient
  #
  #
  #
  # elsif params[:tag]
  #
  #   tag = Tag.where(name: params[:tag].fetch("tag")).first
  #
  #   @recipe.tags << tag
  #
  #
  #
  # end
  #
  #   redirect_to recipe_path
  #
  #
  # end

  private
  def recipe_params
    params.require(:question).permit(:title, :description)
  end
end
