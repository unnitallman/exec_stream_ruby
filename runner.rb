require './exec_stream'

exec_stream("ruby generate_random_strings.rb"){|data| puts "Received: #{data}"}

exec_stream("bash keep_printing_time.sh"){|data| puts "Received: #{data}"}