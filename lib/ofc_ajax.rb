module OFCAjax
  def js_open_flash_chart_object(width, height, base="/")
    special_hash = Base64.encode64(Time.now.to_f.to_s + self.render).gsub(/\n/,"")
    obj_id   = "chart_#{special_hash}"  # some sequencing without all the work of tracking it
    div_name = "flash_content_#{special_hash}"
    protocol = "http" # !request.nil? ? request.env["HTTPS"] || "http" : "http"

    # NOTE: users should put this in the <head> section themselves:
    ## <script type="text/javascript" src="#{base}/javascripts/swfobject.js"></script>

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

