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

 def index_line
    @graph = open_flash_chart_object(600,300,"/test_it/graph_code_line")
  end
  
  def graph_code_line
    # based on this example - http://teethgrinder.co.uk/open-flash-chart-2/data-lines-2.php
    title = Title.new("Multiple Lines")
    
    data1 = []
    data2 = []
    data3 = []
    
    10.times do |x|
      data1 << rand(5) + 1
      data2 << rand(6) + 7
      data3 << rand(5) + 14
    end
    
    line_dot = LineDot.new
    line_dot.width = 4
    line_dot.colour = '#DFC329'
    line_dot.dot_size = 5
    line_dot.values = data1
    #    line_dot.set_key('Page Views', 10)
    
    line_hollow = LineHollow.new
    line_hollow.width = 1
    line_hollow.colour = '#6363AC'
    line_hollow.dot_size = 5
    line_hollow.values = data2
    
    line = Line.new
    line.width = 1
    line.colour = '#5E4725'
    line.dot_size = 5
    line.values = data3
    
    line.text = 'line'
    line_dot.text = 'line_dot'
    line_hollow.text = 'line_hollow'
    
    y = YAxis.new
    y.set_range(0,20,5)
    
    x_legend = XLegend.new("MY X Legend")
    x_legend.set_style('{font-size: 20px; color: #778877}')
    
    y_legend = YLegend.new("MY Y Legend")
    y_legend.set_style('{font-size: 20px; color: #770077}')
    
    chart =OpenFlashChart.new
    chart.set_title(title)
    chart.set_x_legend(x_legend)
    chart.set_y_legend(y_legend)
    chart.y_axis = y
    x = XAxis.new
    x.set_labels([ "Jan", "", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"])
    #    x.set_range(0,6,2)
    chart.x_axis = x
    chart.add_element(line_dot)
    chart.add_element(line_hollow)
    chart.add_element(line)
    
    render :text => chart.to_s
  end
end
