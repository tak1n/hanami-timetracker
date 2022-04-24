# Seed data for the application
#
# The command `bin/hanami db seed` executes these seeds

require "faker"

items = Main::Container["repositories.items"]

20.times do |i|
  start_date = Faker::Time.between(from: DateTime.now - 7, to: DateTime.now)
  end_date = start_date + ([0.5, 1, 2, 3, 4, 5].sample * 60 * 60)
  duration = end_date - start_date

  items.create(
    title: Faker::Hacker.say_something_smart,
    description: Faker::Lorem.sentences(number: 50).join(' '),
    start_date: start_date,
    end_date: end_date,
    duration: duration,
    created_at: DateTime.now,
    updated_at: DateTime.now
  )
end
