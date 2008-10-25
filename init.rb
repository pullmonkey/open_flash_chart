require 'open_flash_chart'

ActionView::Base.send :include, OpenFlashChart::View
ActionController::Base.send :include, OpenFlashChart::Controller

