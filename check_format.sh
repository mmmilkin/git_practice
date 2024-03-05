#!/bin/bash

txt_files=$(find . -type f -name "*.txt")

for file in $txt_files; do
    if [[ "$file" =~ [0-9] ]]; then
        echo "Файл $file содержит цифры в названии, что не допускается."
        exit 1
    fi
done

echo "Проверка названий файлов завершена успешно."
exit 0
