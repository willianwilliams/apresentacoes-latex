#!/bin/bash

REPO="apresentacoes-latex"
USUARIO="willianwilliams"
CSV="apresentacoes.csv"
README="README.md"

echo "# Apresentações disponíveis" > $README
echo "" >> $README

tail -n +2 "$CSV" | while IFS=, read -r nome titulo data evento arquivo
do
  echo "- [$nome](https://$USUARIO.github.io/$REPO/$nome/main.pdf)" >> $README
done

echo "✅ README.md gerado com base no $CSV"
