module Infrastructure
  module Remote
    module Project
      module Teamwork
        module Dto
          class ProjectResponse
            include ::Domain::Entity::Base

            attr_reader :id, :name, :description

            def entity_attributes
              {
                id:          id,
                name:       name,
                description: description
              }
            end

          end
        end
      end
    end
  end
end

