class SectionsController < ApplicationController
  def index
    @sections = Section.all.collect { |section| section_obj (section) }
    render json: @sections
  end

  private

  def section_obj(section)
    section.attributes.merge(section_questions: section.questions.collect { |question| option_obj (question) }
    )
  end

  def option_obj(question)
    question.attributes.merge( question_options: question.options )
  end
end
