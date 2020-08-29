class Api::QuestionsController < ApplicationController
    def index
        questions = Question.all
        #render json: questions <-- used to render before installing fastJSON serializer
        render json: QuestionSerializer.new(questions)
    end


    def create 
        question = Question.new(question_params)
        if question.save
            render json: question
        else
            #will show an error message to the user
            render json: {errors: question.errors.full_messages}
        end
    end





    private
    def question_params
        params.require(:question).permit(:a_question, :theme_id)
    end
end
