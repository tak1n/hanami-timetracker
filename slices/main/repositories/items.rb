module Main
  module Repositories
    class Items < Repository[:items]
      commands :create

      def all
        items.to_a
      end

      def find(id)
        items.by_pk(id).one!
      end
    end
  end
end
