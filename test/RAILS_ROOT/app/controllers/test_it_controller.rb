class TestItController < ApplicationController
  include OpenFlashChart
  
  def index
    respond_to do |wants|
      wants.html {
        @graph = open_flash_chart_object( 600, 300, url_for( :action => 'index', :format => :json ) )
      }
      wants.json { 
        chart = OpenFlashChart::Chart.new( "MY TITLE" ) do |c|
          c << BarGlass.new( :values => (1..10).sort_by{rand} )
        end
        render :text => chart, :layout => false
      }
    end
  end

end
