module Main
  module Actions
    module Items
      class Show < Action::Base
        include Deps[
          repo: "repositories.items"
        ]

        before :set_headers

        # TODO: params validation does not work
        # raises:
        # NoMethodError at /items/1
        # undefined method `params' for Main::Actions::Items::Show:Class params do ^^^^^^
        # /home/benjamin/dev/github/hanami-timetracker/slices/main/actions/items/show.rb: in <class:Show>, line 14
        #
        # params do
        #   required(:id).value(:integer)
        # end

        def handle(req, res)
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
