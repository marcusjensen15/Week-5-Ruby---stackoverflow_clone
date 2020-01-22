class QuestionsController < ApplicationController
  before_action :authorize, only: [:index, :show]

  def index
    # Code for viewing all questions
    # @user = User.find(session[:user_id])
    # binding.pry
    @questions= Question.all
    :index
  end

  def new
    # Code for new question form goes here.
    @question = Question.new
    :new
  end

  def create
    # Code for creating a new question goes here.
    # @user = User.find(session[:user_id])
    @question = Question.new(question_params)
    binding.pry
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    # Code for edit question form goes here.
    @question = Question.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single question goes here.
    @user = User.find(params[:id])
    @question = Question.find(params[:id])
    @answers = []
    Answer.all.each do |answer|
      if answer.question_id == @question.id
        @answers.push(answer)
        # if @question.answers.exclude?(answer)
        #   @answers.push(answer.name)
      end
    end
    render :show
  end

  def update
    # Code for updating an question goes here.
    @question= Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an question goes here.
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end
end
