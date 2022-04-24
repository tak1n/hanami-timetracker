module Main
  module Actions
    module Items
      class Index < Action::Base
        include Deps[
          repo: "repositories.items"
        ]

        def handle(req, res)
          res.render view, items: repo.all
        end
      end
    end
  end
end
