module OFC
  class Base
#    include OFCExtras

    # set all the instance variables we want
    # assuming something like this OpenFlashChart.new(:x_axis => 5, :y_axis => 10, :elements => ["one", "two"], ...)
    def initialize(args={})
      args.each{|k,v| self.send("#{k}=",v)}
      self.type= self.class.to_s.underscore unless [Title].include?(self.class)
      yield self if block_given?  # magic pen pattern
    end

    def method_missing(method_name, *args, &blk)
      case method_name.to_s
      when /(.*)=/   # i.e., if it is something x_legend=
        # if the user wants to set an instance variable then let them
        # the other args (args[0]) are ignored since it is a set method
        self.instance_variable_set("@#{$1}", args[0])
      when /^set_(.*)/
        # backwards compatible ... the user can still use the same set_y_legend methods if they want
        self.instance_variable_set("@#{$1}", args[0])
      else
          if inst = self.instance_variable_get("@#{method_name}")
            inst
          else
            # if the method/attribute is missing and it is not a set method then hmmmm better let the user know
            super
          end
      end
    end

    # same as to_s but won't stack overflow ... use this instead of to_s
    def render
      # need to return the following like this
      # 1) font_size as font-size 
      # 2) dot_size as dot-size
      # 3) outline_colour as outline-colour
      # 4) halo_size as halo-size
      # 5) start_angle as start-angle
      # 6) tick_height as tick-height
      # 7) grid_colour as grid-colour
      # 8) threed as 3d
      # 9) tick_length as tick-length
      # 10) visible_steps as visible-steps
      # 11) key_on_click as key-on-click
      returning self.to_json do |output|
        output.gsub!("threed","3d")
        output.gsub!("default_dot_style","dot_style")
        %w(font_size dot_size outline_colour halo_size start_angle tick_height grid_colour tick_length no_labels label_colour gradient_fill fill_alpha on_click spoke_labels visible_steps key_on_click dot_style).each do |replace|
          output.gsub!(replace, replace.gsub("_", "-"))
        end
      end
    end
  end
end

def OFC.const_missing(const)
  klass = Class.new OFC::Base
  Object.const_set const, klass
  return klass
end
