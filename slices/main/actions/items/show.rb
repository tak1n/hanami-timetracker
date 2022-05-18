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
          require "debug"
          binding.break
          logger.info(req.params.env["REQUEST_URI"])
          logger.info("Params: #{req.params.to_h}")
          logger.info("Raw params: #{req.params.raw}")
          logger.info(req.params[:id])
          logger.info(req.params.get(:id))
          logger.info(req.params[:testparam])
          logger.info(req.params.get(:testparam))

          item = repo.find(req.params[:id])
          res.body = Serializers::Item.new(item).serialize
        end

        private

        def set_headers(req, res)
          res.headers["Content-Type"] = "application/json"
        end
      end
    end
  end
end
