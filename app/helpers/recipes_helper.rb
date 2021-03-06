module RecipesHelper

  def link_to_remove_fields(name, f)
     f.hidden_field(:_destroy)+link_to("<i aria-hidden='false' class='glyphicon glyphicon-trash'></i>".html_safe, "#", :class => "link_to_remove_fields float-right")
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    #link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
    link_to(name, "#", "data-association" => "#{association}" , "data-content" => "#{fields}", :class => "btn btn-default link_to_add_fields" )
  end

end
