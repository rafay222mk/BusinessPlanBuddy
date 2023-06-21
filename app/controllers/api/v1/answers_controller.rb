module Api
  module V1
    class AnswersController < ApplicationController
      def create
        # debugger
        @answer = Answer.create(answer_params)
        if @answer.save
          render json: @answer, status: :created
        else
          render json: @answer, status: :unprocessable_entity
        end
      end

      private

      def set_answer
        @answer = answer.find(params[:id])
      end

      def answer_params
        params.require(:answer).permit( :question_id, :title, :question_statment, :questionnaire_id )
      end
      
    end
  end
end