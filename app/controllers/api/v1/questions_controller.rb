module Api
  module V1
    class QuestionsController < ApplicationController
      def create
        # debugger
        @question = Question.create(question_params)
        if @question.save
          render json: @question, status: :created
        else
          render json: @question, status: :unprocessable_entity
        end
      end

      private

      def set_question
        @question = question.find(params[:id])
      end

      def question_params
        params.require(:question).permit( :title, :question_type,:section_id, answers_attributes: [:question_id, :title, :question_statment, :questionnaire_id] )
      end

    end
  end
end