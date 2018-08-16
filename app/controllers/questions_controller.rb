class QuestionsController < ApplicationController
  def show
    @question = Question.find_by id: params[:id]
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    4.times {@question.answers.build}
  end
    
  def edit
    @question = Question.find_by id: params[:id]
  end

  def create
    @question = Question.new params_question
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(params[:question])
      redirect_to @question
    else
      render 'edit'
    end
  end

  private
    def params_question
      params.require(:question).permit :word, :category_id, answers_attributes: [:id, :mean, :correct]
    end
end
