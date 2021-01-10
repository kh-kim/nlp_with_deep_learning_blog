# regex1: (<sup>[^<]+[^\\])(\s)([^<]+</sup>) --> $1\\$2$3
# regex2: </?sup> --> ^
pandoc -f markdown -t docx $1 -o $2
