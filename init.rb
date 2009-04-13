require 'open_flash_chart'

ActionController::Base.send :include, OpenFlashChart
ActiveRecord::Base.send :include, OpenFlashChart
