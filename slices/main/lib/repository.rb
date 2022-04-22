# auto_register: false
# frozen_string_literal: true

require "timetracker/repository"

module Main
  class Repository < Timetracker::Repository
    struct_namespace Entities
  end
end
