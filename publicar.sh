#!/bin/bash

# Pasta onde os PDFs serão colocados
PUBLIC_DIR="public"

mkdir -p $PUBLIC_DIR

# Para cada pasta de apresentação
for DIR in Aula*/; do
  PDF="$DIR/main.pdf"
  if [ -f "$PDF" ]; then
    echo "📦 Copiando $PDF para $PUBLIC_DIR/$DIR"
    mkdir -p "$PUBLIC_DIR/$DIR"
    cp "$PDF" "$PUBLIC_DIR/$DIR/"
  fi
done

echo "✅ Todos os PDFs foram copiados para a pasta $PUBLIC_DIR"
