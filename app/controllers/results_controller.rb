class ResultsController < ApplicationController
  def new
    @lesson = Lesson.find_by id: params[:lesson_id]
    @category = @lesson.category
    @questions = @category.questions
    number_question = 0
    @questions.each do |question|
      @question = question
      number_question = number_question + 1
    end
    number_question.times {@result = Result.new}
  end

  def show
  end

  def index
  end

  def create
    @result = Result.new params_result
    if @result.save

    else
      render "new"
    end
  end

  private
  def params_result
    params.require(:result).permit :question_id, :answer_id, :lesson_id
  end
end
