class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @questions = params[:questions]
    if @questions == "I am going to work"
      @answer = "Great!"
    elsif @questions.ends_with?("?")
      @answer = "Silly question. Get dressed and go to work!"
    else 
      @answer = "I don't care. Get dressed and go to work!"
    end
  end
end
