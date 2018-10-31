{% load kdev_filters %}
{% block license_header %}
{% if license %}
--

{{ license|lines_prepend:"-- " }}
--
{% endif %}
{% endblock license_header %}



with Ada.Text_IO;


package body {{ name }} is


    Todo : exception;


{% for f in functions %}
{% with f.arguments as arguments %}
    {% if f.returnType %}
    function {{ f.name }} ({% include "arguments_types_names.txt" %}) return {{ f.returnType }} is
        S : {{ f.returnType }};
    begin
        raise Todo;
        return S;
    end;


    {% else %}
    procedure {{ f.name }}({% include "arguments_types_names.txt" %}) is
    begin
        raise Todo;
    end;


    {% endif %}
  {% endwith %}
{% endfor %}


    {% for method in methods %}
    procedure {{ method.name }}({% include "arguments_names.txt" %});
    {% endfor %}


end {{ name }};
