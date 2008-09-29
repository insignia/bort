require 'administrate_me'
require 'test_administrate_me'
require 'admin_scaffold'
require 'admin_view'
require 'elegant_presentation'
require 'presenter'
require 'presentation_builder'
require 'rspec_matchers'

ActionController::Base.extend AdministrateMeBase
ActionController::Base.extend AdministrateMe::ClassMethods
ActionController::Base.send :include, AdministrateMe::InstanceMethods
class ActionController::Base
  superclass_delegating_accessor :ame_modules
end
