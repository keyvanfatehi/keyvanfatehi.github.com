class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/
 
  def initialize(tagName, markup, tokens)
    super
 
    if markup =~ Syntax then
      @id = $1
 
      if $2.nil? then
          @width = 560
          @height = 315
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end
 
  def render(context)
    <<-HTML
    <iframe width="#{@width}" 
            height="#{@height}" 
            src="http://www.youtube.com/embed/#{@id}"
            frameborder="0" allowfullscreen>
    </iframe>
    HTML
  end
 
  Liquid::Template.register_tag "youtube", self
end