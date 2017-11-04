require 'yaml'

module Settings
	extend self

	@_settings = {}
	attr_reader :_settings

	def load!(filename, options ={})
		@_settings = YAML::load_file(filename)
	end
end