class AnswersController < ApplicationController
  before_action :authorize, only: [:index, :show]

  def index
    # Code for listing all answers goes here.
    @answers = Answer.all
    @questions = Question.all
    :index
  end

  def new
    # Code for new answer form goes here.
    @answer = Answer.new
    :new
  end

  def create
    # Code for creating a new answer goes here.
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to questions_path
    else
      render :new
    end

    def edit
      # Code for edit answer form goes here.
      @answer = Answer.find(params[:id])
      render :edit
    end

    def show
      # Code for showing a single answer goes here.
      @answer = Answer.find(params[:id])
      render :show
    end

      def update
        # Code for updating an answer goes here.
        @answer= Answer.find(params[:id])
          if @answer.update(answer_params)
            redirect_to answer_path
          else
            render :edit
          end
      end

      def destroy
        # Code for deleting an answer goes here.
        @answer = Answer.find(params[:id])
        @answer.destroy
        redirect_to root_path
      end

    def add
      @question = Question.find(params[:id])
      @answer = Answer.find(params[:id])
      if params[:upvote]
        upvote = Answer.where(id: params[:upvote].fetch("id")).first
        upvote_question = Question.where(id: params[:upvote].fetch("id")).first
        #use pry here to understand structure of these objects
        object = {:question_id => upvote_question, :answer_id => upvote}
        @question.answers << object
      end
      redirect_to question_path
    end

      private
      def answer_params
        params.require(:answer).permit(:name, :rating, :description)
      end
  end
