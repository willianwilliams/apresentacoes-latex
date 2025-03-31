#!/bin/bash

echo "🔧 Compilando apresentação com Docker..."
docker compose up --build

PDF="main.pdf"
if [ -f "$PDF" ]; then
  echo "✅ PDF gerado com sucesso!"
  code "$PDF"
else
  echo "❌ PDF não encontrado. Verifique erros de compilação."
fi
