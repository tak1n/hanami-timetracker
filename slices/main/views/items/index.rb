module Main
  module Views
    module Items
      class Index < View::Base
        expose :items do
          (1..25).map { |i| ::Main::Entities::Item.new(id: i) }
        end
      end
    end
  end
end
