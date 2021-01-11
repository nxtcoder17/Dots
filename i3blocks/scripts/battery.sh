#! /bin/sh

acpi &> /dev/null
if [[ $? -ne 0 ]]; then
    echo " [acpi]: not installed "
    exit 1
fi

battery=($( acpi | grep -oP '(Charging|Discharging)(?=,)|(\d+(?=%))'))

if [[ ${battery[0]} = 'Discharging' ]]; then
    echo -e "<span size='large' fgcolor='#ff364a'><b>  ${battery[1]} % </b></span>" 
else
    echo -e "<span size='large' bgcolor='black' fgcolor='#16f59f'><b>  ${battery[1]:-100} % </b></span>" 
fi
