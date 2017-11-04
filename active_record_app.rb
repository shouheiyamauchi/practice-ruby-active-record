require_relative 'db_setup'
require_relative 'user'

require 'pry'

class ActiveRecordApp
	DbSetup.connect

	binding.pry
end
