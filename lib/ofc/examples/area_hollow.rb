module OFC
  module Examples
    module AreaHollow
      # http://teethgrinder.co.uk/open-flash-chart-2/area-hollow.php
      def area_hollow
        #$data = array();
        data = []

        #for( $i=0; $i<6.2; $i+=0.2 )
        #{
        #  $tmp = sin($i) * 1.9;
        #  $data[] = $tmp;
        #}

        (0..31).each do |x|
          data << Math.sin(x * 0.2) * 1.9
        end

        #include '../php-ofc-library/open-flash-chart.php';

        #$chart = new open_flash_chart();
        #$chart->set_title( new title( 'Area Chart' ) );

        chart = OFC::OpenFlashChart.new
        chart.title = OFC::Title.new(:text => "Area Chart")

        #//
        #// Make our area chart:
        #//
        #$area = new area();
        area = OFC::Area.new

        #// set the circle line width:
        #$area->set_width( 2 );
        area.width = 2

        #$area->set_default_dot_style( new hollow_dot() );
        area.dot_style = OFC::HollowDot.new

        #$area->set_colour( '#838A96' );
        area.colour = '#838A96'

        #$area->set_fill_colour( '#E01B49' );
        area.fill = '#E01B49'

        #$area->set_fill_alpha( 0.4 );
        area.fill_alpha = 0.4

        #$area->set_values( $data );
        area.values = data

        #// add the area object to the chart:
        #$chart->add_element( $area );
        chart.elements = []
        chart.elements << area

        #$y_axis = new y_axis();
        y_axis = OFC::YAxis.new

        #$y_axis->set_range( -2, 2, 2 );
        y_axis.min = -2
        y_axis.max = 2
        y_axis.steps = 2

        #$y_axis->labels = null;
        y_axis.lables = nil

        #$y_axis->set_offset( false );
        y_axis.offset = 0

        #$x_axis = new x_axis();
        x_axis = OFC::XAxis.new

        #$x_axis->labels = $data;
        x_axis.labels = data

        #$x_axis->set_steps( 2 );
        x_axis.steps = 2

        #$x_labels = new x_axis_labels();
        x_labels = OFC::XAxisLabels.new
        #$x_labels->set_steps( 4 );
        x_labels.steps = 4
        #$x_labels->set_vertical();
        x_labels.rotate = 270

        #// Add the X Axis Labels to the X Axis
        #$x_axis->set_labels( $x_labels );
        x_axis.labels = x_labels

        #$chart->add_y_axis( $y_axis );
        chart.y_axis = y_axis
        #$chart->x_axis = $x_axis;
        chart.x_axis = x_axis

        #echo $chart->toPrettyString();
        render :text => chart.render
      end
    end
  end
end
