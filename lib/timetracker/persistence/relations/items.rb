module Persistence
  module Relations
    class Items < ROM::Relation[:sql]
      schema(:items, infer: true) do
      end
    end
  end
end
