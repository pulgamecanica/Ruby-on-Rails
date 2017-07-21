class AnswersController < ApplicationController

  def create
    p params
    p "*"*50
    @game = params[:game_id]
    11.times do |x|
      x =+ 1
      @answer = Answer.find_by(name: params["#{x}"])
      @question = @answer.question.id
        if @answer.correct == true
          @correct = 1
        else
          @correct = 0
        end
    Stat.create(game_id: @game, question_id: @question, answer_id: @answer.id, correct: @correct)
    end
    redirect_to root_path
  end

end
