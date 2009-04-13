require 'ofc'

ActionController::Base.send :include, OFC
ActionController::Base.send :include, OFC::Controller
