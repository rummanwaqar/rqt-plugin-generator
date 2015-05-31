if [ $# -lt 1 ]
then
echo "usage: ./rqt-plugin-generator.sh <rqt-plugin-name>"
echo "       Don't include the \"rqt\" portion in your plugin name"
echo "example: ./rqt-plugin-generator.sh my_cool_plugin"
exit 
fi

cp -r ./template ../../src/rqt_$@

pushd ../../src/rqt_$@ > /dev/null

# Rename src files
mv ./src/rqt_template/template.py ./src/rqt_template/$@.py
mv ./resource/template.ui ./resource/$@.ui
mv ./src/rqt_template ./src/rqt_$@

# Rename script file
mv ./scripts/rqt_template ./scripts/rqt_$@

find . -type f -exec sed -i "s/(>>>APP-NAME<<<)/$@/g" {} \;

popd > /dev/null

echo "Generated project: $@"
