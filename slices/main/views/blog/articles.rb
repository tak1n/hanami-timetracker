# frozen_string_literal: true

Article = Struct.new(:title)

module Main
  module Views
    module Blog
      class Articles < View::Base
        expose :articles do
          %w[article1 article2 article3].map do |title|
            Article.new(title)
          end
        end
      end
    end
  end
end
