module Jekyll
  module ImageBaseurl
    def image_baseurl(input)
      return input if input.nil? || input.empty?
      
      site_baseurl = @context.registers[:site].config['baseurl'] || ''
      
      # Handle markdown image syntax: ![alt](/assets/uploads/image.jpg)
      result = input.gsub(%r{!\[([^\]]*)\]\(/assets/uploads/([^)]+)\)}, "![\\1](#{site_baseurl}/assets/uploads/\\2)")
      
      # Handle HTML img src: src="/assets/uploads/image.jpg"
      result = result.gsub(%r{src="(/assets/uploads/[^"]+)"}, "src=\"#{site_baseurl}\\1\"")
      
      result
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageBaseurl)
