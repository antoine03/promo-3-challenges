def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the blocka
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  if attr == nil
    full_html = "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    full_html = "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end
  full_html
end

def timer_for
  #TODO:  Return time taken to execute the given block
  t= Time.now
  yield
 Time.now - t
end

def transform(element)
  yield(element)
end


