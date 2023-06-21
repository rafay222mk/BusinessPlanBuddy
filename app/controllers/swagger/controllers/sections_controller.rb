class Swagger::Controllers::SectionsController
    include Swagger::Blocks
  
    swagger_path '/sections' do
      operation :get do
        key :summary, 'List of all sections.'
        key :description, 'This function is used to sections'
        key :tags, [
          'Sections'
        ]
        key :produces, [
          'application/json'
        ]
        response 200 do
          key :description, 'Successful Operation'
        end
      end
    end
    swagger_path '/sections' do
      operation :post do
        key :summary, 'List of all sections.'
        key :description, 'This function is used to sections'
        key :tags, [
          'Sections'
        ]
        key :produces, [
          'application/json'
        ]
        parameter do
          key :name, 'section[heading]'
          key :in, :query
          key :description, 'Section heading here'
          key :type, :string
        end
        parameter do
          key :name, 'section[description]'
          key :in, :query
          key :description, 'Description type here'
          key :type, :string
        end
        response 200 do
          key :description, 'Successful Operation'
        end
      end
    end
end