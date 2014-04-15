class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order_by({:rank, 'desc'})
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      show
    else
      flash[:alert] = "Question not created!"
      redirect_to '/questions/new'
    end
  end

  def show
    if !@question
      @question = Question.find({:id => params[:id]})
    end
    render 'show'
  end
end
