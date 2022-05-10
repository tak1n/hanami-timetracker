module Main
  module Serializers
    class Item
      include Alba::Resource

      root_key :item

      attributes :id, :title, :description, :duration
                 # :start_date, :end_date, :created_at,
                 # :updated_at

      attribute :duration_in_min do |resource|
        resource.duration / 60
      end

      attribute :start_date do |resource|
        resource.start_date.strftime("%d-%m-%Y-%H:%M")
      end

      attribute :end_date do |resource|
        resource.end_date.strftime("%d-%m-%Y-%H:%M")
      end

      attribute :created_at do |resource|
        resource.created_at.strftime("%d-%m-%Y-%H:%M:%S")
      end

      attribute :updated_at do |resource|
        resource.created_at.strftime("%d-%m-%Y-%H:%M:%S")
      end
    end
  end
end
