for combo in $(curl -s https://raw.githubusercontent.com/nixxholas/hudson/master/lineage-build-targets | sed -e 's/#.*$//' | grep lineage-15.1 | awk '{printf "nixlineage_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
