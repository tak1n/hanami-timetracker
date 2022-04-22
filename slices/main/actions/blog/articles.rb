module Main
  module Actions
    module Blog
      class Articles < Action::Base
        expose :articles do
          %w[article1 article2 article3].map do |title|
            Article.new(title)
          end
        end
      end
    end
  end
end
