require "airbrake_jets/version"

module AirbrakeJets
  class Error < StandardError; end
end


require_relative "airbrake_jets/turbine" if defined?(Jets)