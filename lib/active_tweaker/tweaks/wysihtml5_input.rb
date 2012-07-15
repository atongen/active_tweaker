class Wysihtml5Input < Formtastic::Inputs::TextInput

  def input_html_options
    { class: 'wysihtml5' }.merge(super)
  end

end
