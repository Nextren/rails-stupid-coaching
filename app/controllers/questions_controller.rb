class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    @message = 'I don`t care, get dressed and go to work!'
    if @question.include? '?'
      @message = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @message = 'Great!'
    end
  end
end
