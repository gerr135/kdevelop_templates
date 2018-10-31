{% load kdev_filters %}
{% block license_header %}
{% if license %}
--

{{ license|lines_prepend:"-- " }}
--
{% endif %}
{% endblock license_header %}


{% if baseClasses %}
with {% for b in baseClasses %}b.baseType{% if not forloop.last %}, {% endif %}{% endfor %};
{% endif %}

package {{ name }} is


{% for m in members %}
    type {{ m.name }} is {{ m.type }};
{% endfor %}


{% for f in functions %}
  {% with f.arguments as arguments %}
    {% if f.returnType == "" %}
    procedure {{ f.name }}({% include "arguments_types_names.txt" %});
    {% else %}
    function  {{ f.name }}({% include "arguments_types_names.txt" %}) return {{ f.returnType }};
    {% endif %}
  {% endwith %}
{% endfor %}


    ToDo : exception;


end {{ name }};
