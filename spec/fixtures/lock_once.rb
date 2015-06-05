require_relative 'fixture_helper.rb'

PgLock.new(name: "all_your_base", attempts: 1).lock do
  puts "Running locked code on: #{ Process.pid }"
  sleep 1 # hold the lock for a bit
end