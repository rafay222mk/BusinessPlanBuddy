class Swagger::Controllers::QuestionsController
  include Swagger::Blocks

  swagger_path '/questions' do
    operation :post do
      key :summary, 'List of all questions.'
      key :description, 'This function is used to question'
      key :tags, [
        'questions'
      ]
      key :produces, [
        'application/json'
      ]
      parameter do
        key :name, :request_body
        key :in, :body
        key :description, 'column object array'
        key :type, :object
        key :required, true
        schema do
          property :question do
            key :type, :object
            property :title, type: :string, example: 'question title'
            property :question_type, type: :string, example: 'question type'
            property :section_id, type: :integer, example: '1'
            property :answers_attributes do
              key :type, :array
              items type: :object do
                property :title, type: :string, example: 'Answer Title'
                property :question_statment, type: :string, example: 'this is answer'
                property :questionnaire_id, type: :integer, example: '1'
              end
            end
          end
        end
      end
      response 200 do
        key :description, 'Successful Operation'
      end
    end
  end
end