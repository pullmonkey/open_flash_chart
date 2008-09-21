module OFCAjax
  def js_open_flash_chart_object(div_name, width, height, base="/")
    return %[
      <script type="text/javascript">
        swfobject.embedSWF("#{base}open-flash-chart.swf", "#{div_name}", "#{width}", "#{height}", "9.0.0");
      </script>
      #{self.to_open_flash_chart_data}
      <div id="#{div_name}"></div>
    ]
  end

  def to_open_flash_chart_data
    # this builds the open_flash_chart_data js function
    return %'
      <script type="text/javascript">
        function ofc_ready() {
        }
        function open_flash_chart_data() {
          return Object.toJSON(data);
        }
        function findSWF(movieName) {
          if (navigator.appName.indexOf("Microsoft")!= -1) {
            return window[movieName];
          } else {
            return document[movieName];
          }
        }
        var data = #{self.render};
      </script>
    '
  end
end

