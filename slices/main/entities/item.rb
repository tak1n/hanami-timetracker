# frozen_string_literal: true

require "faker"
module Main
  module Entities
    # class Item < Hanami::Entity
    # end
    class Item
      attr_reader :title, :description, :start_date,
                  :end_date, :duration, :created_at, :updated_at

      def initialize(args = {})
        @title = Faker::Verb.base
        @description = Faker::Lorem.sentence(word_count: 10)
        @duration = Faker::Number.number(digits: 4)
        @created_at = Faker::Date.between(from: "2022-01-01", to: "2022-04-01")
        @updated_at = Faker::Date.between(from: "2022-04-01", to: "2022-04-24")
      end
    end
  end
end
