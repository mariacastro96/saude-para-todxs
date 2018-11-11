class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :set_languages, only: [:new, :update, :edit, :update]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question, notice: :created
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to @question,  notice: :updated
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = :destroyed
    @question.destroy
    redirect_to questions_path
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def set_languages
    @languages = Language.all
  end

  def question_params
    params.require(:question).permit(:code, :question, :answer, :language_id)
  end
end
