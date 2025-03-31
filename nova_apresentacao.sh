#!/bin/bash

TEMPLATE_DIR="template-base"
NOME=$1

if [ -z "$NOME" ]; then
  echo "❌ Você precisa fornecer um nome para a nova apresentação!"
  echo "Exemplo: ./nova_apresentacao.sh Aula03"
  exit 1
fi

# Cria nova apresentação
cp -r "$TEMPLATE_DIR" "$NOME"

# Cria o CSV se não existir
if [ ! -f apresentacoes.csv ]; then
  echo "nome,titulo,data,evento,arquivo" > apresentacoes.csv
fi

# Gera a data atual (formato YYYY-MM-DD)
DATA=$(date +%F)

# Adiciona entrada ao CSV
echo "$NOME,,${DATA},,${NOME}/main.tex" >> apresentacoes.csv

echo "✅ Nova apresentação '$NOME' criada com base no template!"
echo "📄 Linha adicionada no apresentacoes.csv."
