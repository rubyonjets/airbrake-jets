require 'airbrake-ruby'

module AirbrakeJets
  class Turbine < ::Jets::Turbine
    initializer 'airbrake.configure' do
      Airbrake.configure do |c|
        c.project_id = ENV["AIRBRAKE_PROJECT_ID"]
        c.project_key = ENV["AIRBRAKE_PROJECT_KEY"]
        c.environment = Jets.env.to_s
        ignore_environments = ENV["AIRBRAKE_IGNORE_ENVIRONMENTS"]
        c.ignore_environments = ignore_environments ? ignore_environments.split(' ') : %w(test cucumber)
        c.root_directory = ENV["AIRBRAKE_ROOT_DIRECTORY"] # set to nil to bypass Airbrake::Filters
      end
    end

    on_exception 'airbrake.capture' do |exception|
      Airbrake.notify_sync(exception) # use sync or Lambda process goes away before request is completed
    end
  end
end
