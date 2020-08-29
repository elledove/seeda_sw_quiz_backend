class Api::AnswersController < ApplicationController

    def index
        answers  = Answer.all 
        #render json: answers
        render json: AnswerSerializer.new(answers)
    end


    def create
        answer = Answer.create(answer_params)
        if answer.save
            render json: answer
        else
            render {answer.errors.full_message}

        end
    end


            private

            def answer_params
                params.require(:answer).permit(:an_answer,:question_id)
            end
        end
