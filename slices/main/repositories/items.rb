module Main
  module Repositories
    class Items < Repository[:items]
      commands :create

      def all
        items.to_a
      end
    end
  end
end
