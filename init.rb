require 'open_flash_chart'

ActionView::Base.send :include, OpenFlashChart::View
OpenFlashChart::Base.send :include, OpenFlashChart::View
ActionController::Base.send :include, OpenFlashChart::Controller
ActionController::Base.send :include, OpenFlashChart
