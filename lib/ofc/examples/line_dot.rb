module OFC
  module Examples
    module LineDot
      # http://teethgrinder.co.uk/open-flash-chart-2/line-dot.php
      def line_dot
        #$data_1 = array();
        #$data_2 = array();
        #$data_3 = array();
        data_1 = []
        data_2 = []
        data_3 = []

        #for( $i=0; $i<6.2; $i+=0.2 )
        #{
        #  $data_1[] = (sin($i) * 1.9) + 10;
        #  $data_2[] = (sin($i) * 1.9) + 7;
        #  $data_3[] = (sin($i) * 1.9) + 4;
        #}
        (0..31).each do |x|
          data_1 << (Math.sin(x * 0.2) * 1.9) + 10
          data_2 << (Math.sin(x * 0.2) * 1.9) + 7
          data_3 << (Math.sin(x * 0.2) * 1.9) + 4
        end

        #$title = new title( date("D M d Y") );
        title = OFC::Title.new(:text => Time.now.strftime("%a %b %d %Y"))

        #$line_1_default_dot = new dot();
        #$line_1_default_dot->colour('#f00000');
        line_1_default_dot = OFC::Dot.new(:colour => '#f00000')

        #$line_1 = new line();
        #$line_1->set_default_dot_style($line_1_default_dot);
        #$line_1->set_values( $data_1 );
        #$line_1->set_width( 1 );
        line_1 = OFC::Line.new(:dot_style => line_1_default_dot, :values => data_1, :width => 1)

        #// ------- LINE 2 -----
        #$line_2_default_dot = new dot();
        #$line_2_default_dot->size(3)->halo_size(1)->colour('#3D5C56');
        line_2_default_dot = Dot.new(:dot_size => 3, :halo_size => 1, :colour => '#3D5C56')

        #$line_2 = new line();
        #$line_2->set_default_dot_style($line_2_default_dot);
        #$line_2->set_values( $data_2 );
        #$line_2->set_width( 2 );
        #$line_2->set_colour( '#3D5C56' );
        line_2 = OFC::Line.new(:dot_style => line_2_default_dot, :values => data_2, :width => 2, :colour => '#3D5C56')

        #// ------- LINE 2 -----
        #$line_3_default_dot = new dot();
        #$line_3_default_dot->size(4)->halo_size(2);
        line_3_default_dot = Dot.new(:dot_size => 5, :halo_size => 2)

        #$line_3 = new line();
        #$line_3->set_default_dot_style($line_3_default_dot);
        #$line_3->set_values( $data_3 );
        #$line_3->set_width( 6 );
        line_3 = OFC::Line.new(:dot_style => line_3_default_dot, :values => data_3, :width => 6)

        #$y = new y_axis();
        #$y->set_range( 0, 15, 5 );
        y = OFC::YAxis.new(:min => 0, :max => 15, :steps => 5)


        #$chart = new open_flash_chart();
        #$chart->set_title( $title );
        chart = OFC::OpenFlashChart.new(:title => title)
        #$chart->add_element( $line_1 );
        #$chart->add_element( $line_2 );
        #$chart->add_element( $line_3 );
        chart.elements = [line_1,line_2,line_3]
        #$chart->set_y_axis( $y );
        chart.y_axis = y

        #echo $chart->toPrettyString();
        render :text => chart.render
      end
    end
  end
end

