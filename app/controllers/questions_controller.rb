class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    if @question.include?('?')
      @response = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @response = "Great!"
    else
      @response = "I don't care, get dressed and go tto work!"
    end
  end
end
