module Api
    module V1
      class SectionsController < ApplicationController
        def index
          @sections = Section.all.collect { |section| section_obj (section) }
          render json: @sections
        end

        def create
          # debugger
          @section = Section.create(section_params)
          if @section.save
          render json: @section, status: :created
          else
            render json: @section, status: :unprocessable_entity
          end
        end

        private

        def set_section
          @section = Section.find(params[:id])
        end

        def section_params
          params.require(:section).permit(:heading, :description )
        end

        def section_obj(section)
          section.attributes.merge(section_questions: section.questions.collect { |question| option_obj (question) } )
        end

        def option_obj(question)
          question.attributes.merge( question_options: question.options )
        end
      end
    end
  end