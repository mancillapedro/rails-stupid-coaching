class QuestionsController < ApplicationController
  def ask; end

  def answer
    @you = params[:answer]
    @coach = "I don't care, get dressed and go to work!"
    if @you.downcase == 'i am going to work'
      @coach = 'Great!'
    elsif @you[-1] == '?'
      @coach = 'Silly question, get dressed and go to work!'
    end
  end
end
