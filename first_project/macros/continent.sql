{% macro continent(country) -%}
    case
        when {{country}} in ('USA', 'CANADA') then 'NORTH AMERICA'
        when {{country}} in ('ARGENTINA', 'BRAZIL', 'MEXICO',
                            'VENEZUELA') then 'SOUTH AMERICA'
        when {{country}} in ('AUSTRIA', 'BELGIUM', 'DENMARK',
                             'FINLAND', 'FRANCE', 'GERMANY',
                             'IRELAND', 'ITALY', 'NORWAY',
                             'POLAND', 'PORTUGAL', 'SPAIN',
                             'SWEDEN', 'SWITZERLAND', 'UK') then 'EUROPE'
        else 'UNKNOWN'
    end
{%- endmacro %}