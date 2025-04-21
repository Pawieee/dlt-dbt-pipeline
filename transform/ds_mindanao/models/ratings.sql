{%- set columns = adapter.get_columns_in_relation(source('de_projects', 'responses')) -%}

SELECT university_email
    {% for column in columns if column.name[-1].isdigit() %}
        , {{ get_ratings(column.name) }} AS {{ column.name }}_ratings
    {% endfor %}
FROM {{ source('de_projects', 'responses') }}
