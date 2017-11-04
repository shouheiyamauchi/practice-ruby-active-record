require_relative 'settings'
require_relative 'migration'

require 'active_record'
require 'pry'

module DbSetup
  extend self

  def connect
    Settings.load!('./config/settings.yml')
    settings = Settings._settings

    active_record_connection(settings)

    # Migration.new().change
  end

  private

  def active_record_connection(settings)
    ActiveRecord::Base.establish_connection(
      adapter:  'postgresql',
      host:     settings['database']['host'],
      database: settings['database']['dbname'],
      username: settings['database']['username'],
      password: settings['database']['password']
    )
  end
end
