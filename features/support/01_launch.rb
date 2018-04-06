require 'calabash-cucumber/launcher'

module Calabash::Launcher
  @@launcher = nil
  def self.launcher
    @@launcher ||= Calabash::Cucumber::Launcher.new
  end
  def self.launcher=(launcher)
    @@launcher = launcher
  end
end

Before do |scenario|
  launcher = Calabash::Launcher.launcher
  options = {
    # Add launch options here.
  }
  launcher.relaunch(options)
end

After do |scenario|
  # Calabash can shutdown the app cleanly by calling the app life cycle methods
  # in the UIApplicationDelegate.  This is really nice for CI environments, but
  # not so good for local development.
  #
  # See the documentation for QUIT_APP_AFTER_SCENARIO for a nice debugging workflow
  #
  # http://calabashapi.xamarin.com/ios/file.ENVIRONMENT_VARIABLES.html#label-QUIT_APP_AFTER_SCENARIO
  # http://calabashapi.xamarin.com/ios/Calabash/Cucumber/Core.html#console_attach-instance_method
  if launcher.quit_app_after_scenario?
    calabash_exit
  end
end
