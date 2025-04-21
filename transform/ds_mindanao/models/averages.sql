{%- set columns = adapter.get_columns_in_relation(ref("ratings")) -%}

SELECT 
    {% for column in columns if column.name[1].isdigit() %}
        ROUND(AVG({{ column.name}}), 2) AS {{ column.name }}_avg
        {% if not loop.last %},{% endif %}
    {% endfor %}
FROM {{ ref("ratings")}}