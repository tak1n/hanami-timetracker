# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :items do
      primary_key :id
      column :title, String, null: false
      column :description, :text, null: false
      column :start_date, DateTime
      column :end_date, DateTime
      column :duration, Integer, null: false
    end
  end
end
