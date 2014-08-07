puts "Beginning the whole suite"

at_exit do
	puts "Ending the whole suit"
end


# AfterStep do
# 	puts "done with step"
# end

# Around do |scenario, block|
# 	puts "Running scenario"
# 	block.call
# 	puts "Done"
# end