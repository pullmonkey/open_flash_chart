def open_flash_chart_object(width, height, url, use_swfobject=true, base="/")
  url      = CGI::escape(url)
  # need something that will not be repeated on the same request
  # need the gsub at the end to first get the last newline (which could simply be done with chomp)
  # and second get the newlines in the middle of the encoded string
  #special_hash = Base64.encode64(Time.now.to_f.to_s + url.to_s).gsub(/\n/,"")
  # Fix for bug in IE
  special_hash = Base64.encode64(Digest::SHA1.digest("#{rand(1<<64)}/#{Time.now.to_f}/#{Process.pid}/#{url}"))[0..7]
  obj_id   = "chart_#{special_hash}"  # some sequencing without all the work of tracking it
  div_name = "flash_content_#{special_hash}"
  protocol = "http" # !request.nil? ? request.env["HTTPS"] || "http" : "http"

  # NOTE: users should put this in the <head> section themselves:
  ## <script type="text/javascript" src="#{base}/javascripts/swfobject.js"></script>

  return %[
    <div id="#{div_name}"></div>
    <script type="text/javascript">
      swfobject.embedSWF("#{base}open-flash-chart.swf", "#{div_name}", "#{width}", "#{height}", "9.0.0", "expressInstall.swf",{"data-file":"#{url}"});
    </script>
    <noscript>
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="#{protocol}://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="#{width}" height="#{height}" id="#{obj_id}" align="middle">
        <param name="allowScriptAccess" value="sameDomain" />
        <param name="movie" value="#{base}open-flash-chart.swf?data=#{url}" />
        <param name="quality" value="high" />
        <param name="bgcolor" value="#FFFFFF" />
        <embed src="#{base}open-flash-chart.swf?data=#{url}" quality="high" bgcolor="#FFFFFF" width="#{width}" height="#{height}" name="#{obj_id}" align="middle"  allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="#{protocol}://www.macromedia.com/go/getflashplayer" id="#{obj_id}" />
      </object>
    </noscript>
  ]
end

