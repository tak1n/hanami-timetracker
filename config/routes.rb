# frozen_string_literal: true

require "hanami/application/routes"

module Timetracker
  class Routes < Hanami::Application::Routes
    define do
      slice :main, at: "/" do
        root to: "home.show"
        # get '/articles', to: ->(env) { [200, {}, ['<h1>Articles</articles>']] }
        # get "/articles", to: "blog.articles"
        get "/items", to: "items.index"
      end
    end
  end
end
