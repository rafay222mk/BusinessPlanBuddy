class Swagger::Controllers::AnswersController
  include Swagger::Blocks

  swagger_path '/answers' do
    operation :post do
      key :summary, 'List of all answers.'
      key :description, 'This function is used to answer'
      key :tags, [
        'Answers'
      ]
      key :produces, [
        'application/json'
      ]
      parameter do
        key :name, 'answer[question_id]'
        key :in, :query
        key :description, 'Question ID heading here'
        key :type, :integer
      end
      parameter do
        key :name, 'answer[title]'
        key :in, :query
        key :description, 'Title type here'
        key :type, :string
      end
      parameter do
        key :name, 'answer[question_statment]'
        key :in, :query
        key :description, 'Question Statment type here'
        key :type, :string
      end
      parameter do
        key :name, 'answer[questionnaire_id]'
        key :in, :query
        key :description, 'Questionnaire ID type here'
        key :type, :integer
      end
      response 200 do
        key :description, 'Successful Operation'
      end
    end
  end
end