class StatementsController < ApplicationController
  before_action :set_statement, only: [:show, :edit, :update, :destroy]
  before_action :set_languages, only: [:new, :create, :edit, :update,]

  def index
    @statements = Statement.all
  end

  def show
  end

  def new
    @statement = Statement.new
  end

  def create
    @statement = Statement.new(statement_params)
    if @statement.save
      redirect_to @statement, notice: :created
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @statement.update(statement_params)
      redirect_to @statement,  notice: :updated
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = :destroyed
    @statement.destroy
    redirect_to statements_path
  end

  private

  def set_statement
    @statement = Statement.find(params[:id])
  end

  def set_languages
    @languages = Language.all
  end

  def statement_params
    params.require(:statement).permit(:code, :title, :text, :language_id)
  end
end
