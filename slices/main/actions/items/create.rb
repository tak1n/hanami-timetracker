module Main
  module Actions
    module Items
      class Create < Action::Base
        include Deps[
          repo: "repositories.items"
        ]

        # TODO: get params validation working
        # params do
        #   required(:title).filled(:string)
        #   required(:description).filled(:string)
        #   required(:duration).filled(:integer)
        # end

        def handle(req, res)
          res.status = 201
          res.body = JSON.generate({ status: "created" })
        end
      end
    end
  end
end
