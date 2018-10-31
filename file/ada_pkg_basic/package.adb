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

package body {{ name }} is


{% for f in functions %}
  {% with f.arguments as arguments %}
    {% if f.returnType == "" %}
    procedure {{ f.name }}({% include "arguments_types_names.txt" %}) is
    begin
        raise Todo;
    end;

    {% else %}

    function  {{ f.name }}({% include "arguments_types_names.txt" %}) return {{ f.returnType }} is
    begin
        raise Todo;
    end;


    {% endif %}
  {% endwith %}
{% endfor %}


end {{ name }};
