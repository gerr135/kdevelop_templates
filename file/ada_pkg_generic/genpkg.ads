{% load kdev_filters %}
{% block license_header %}
{% if license %}
--

{{ license|lines_prepend:"-- " }}
--
{% endif %}
{% endblock license_header %}



generic
    {% for m in members %}
    type {{ m.name }} is {{ m.type|default:"private" }};
    {% endfor %}
    with function Img(E : Key_Type) return String;
package {{ name }} is


    Debug : Boolean := False;
    --  set this to True to get some reporting on the go..


    type {{ name }} is {% if base_classes %}new {% for inh in base_classes %}{{ inh.baseType }}{% if not forloop.last %} and {% endif %}{% endfor %} with {% endif %}private;


{% for f in functions %}
{% with f.arguments as arguments %}
    {% if f.returnType %}
    function {{ f.name }} ({% include "arguments_types_names.txt" %}) return {{ f.returnType }};
    {% else %}
    procedure {{ f.name }}({% include "arguments_types_names.txt" %});
    {% endif %}
  {% endwith %}
{% endfor %}


private


    type {{ name }} is {% if base_classes %}new {% for inh in base_classes %}{{ inh.baseType }}{% if not forloop.last %} and {% endif %}{% endfor %} with {% endif %}record
        -- entries here
    end record;

    {% for method in methods %}
    procedure {{ method.name }}({% include "arguments_names.txt" %});
    {% endfor %}


end {{ name }};
