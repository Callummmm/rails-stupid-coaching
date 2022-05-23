class QuestionsController < ApplicationController
  def answer
    params[:ask]
    @user_ask = params[:ask]
    @user_answer = if @user_ask == 'I am going to work'
                     'Great!'
                   elsif @user_ask.include?('?')
                     'Silly question, get dressed and go to work!'
                   else
                     "I don't care, get dressed and go to work!"
                   end
  end
end
