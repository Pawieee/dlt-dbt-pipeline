{% macro get_ratings(col) %}
    {% set ratings = {'Very Highly Satisfied': 5.0, 'Highly Satisfied': 4.19, 'Moderately Satisfied': 3.39, 'Less Satisfied': 2.59, 'Unsatisfied': 1.79} %}
    CASE
        {% for key, value in ratings.items() %}
            WHEN TRIM({{ col }}) = '{{ key }}' THEN {{ value }}
        {% endfor %}
        ELSE 0
    END
{% endmacro %}