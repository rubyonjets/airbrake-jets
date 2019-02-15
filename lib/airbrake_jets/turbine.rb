require 'airbrake-ruby'

module AirbrakeJets
  class Turbine < ::Jets::Turbine
    initializer 'airbrake.configure' do
      Airbrake.configure do |c|
        c.project_id = ENV["AIRBRAKE_PROJECT_ID"]
        c.project_key = ENV["AIRBRAKE_PROJECT_KEY"]
        c.environment = Jets.env.to_s
        c.ignore_environments = %w(development test cucumber)
        c.root_directory = nil # to bypass Airbrake::Filters
      end
    end

    on_exception 'airbrake.capture' do |exception|
      Airbrake.notify(exception)
    end
  end
end