{% macro limit_data_in_dev(timestamp_column_name, dev_days_of_data=3) %}
{% if target.name == 'dev' %}
where {{timestamp_column_name}} >= dateadd('day',-{{dev_days_of_data}},current_timestamp)
{% endif %}
{% endmacro %}