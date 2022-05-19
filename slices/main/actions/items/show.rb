module Main
  module Actions
    module Items
      class Show < Action::Base
        include Deps[
          repo: "repositories.items",
          logger: "application.logger"
        ]

        before :set_headers

        params do
          required(:id).value(:integer)
        end

        def handle(req, res)
          if req.params.valid?
            item = repo.find(req.params[:id])
            res.body = Serializers::Item.new(item).serialize
          else
            res.body   = { errors: req.params.errors }.to_json
            res.status = 400
          end
        end

        private

        def set_headers(_req, res)
          res.headers["Content-Type"] = "application/json"
        end
      end
    end
  end
end
