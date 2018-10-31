{% load kdev_filters %}
{% block license_header %}
{% if license %}
/*
{{ license|lines_prepend:" * " }}
 */
{% endif %}
{% endblock license_header %}


import java.io.*;
public class {{ name }} {


    public static void main(String[] args) {
        System.out.println("Hello World!");
    }


}
