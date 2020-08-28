class Api::AnswersController < ApplicationController

    def index
        answers  = Answer.all 
        render json: answers
    end


    def create
        answer = Answer.create(answer_params)
        if answer.save
            render json: answer
        else
            render {answer.errors.full_message}




            private
            
            def answer_params
                params.require(:answer).permit(:an_answer,:question_id)
            end
end
