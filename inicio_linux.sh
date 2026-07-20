#!/usr/bin/env bash
# ============================================================
#  Lanzador — Programa de Calistenia Militar
# ============================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML_FILE="$SCRIPT_DIR/calistenia_militar.html"

if [ ! -f "$HTML_FILE" ]; then
  echo "ERROR: No se encontró $HTML_FILE"
  exit 1
fi

# Abrir con el navegador disponible
if command -v xdg-open &>/dev/null; then
  xdg-open "$HTML_FILE"
elif command -v firefox &>/dev/null; then
  firefox "$HTML_FILE"
elif command -v google-chrome &>/dev/null; then
  google-chrome "$HTML_FILE"
elif command -v chromium-browser &>/dev/null; then
  chromium-browser "$HTML_FILE"
elif command -v chromium &>/dev/null; then
  chromium "$HTML_FILE"
else
  echo "ERROR: No se encontró un navegador compatible."
  echo "Abre manualmente: $HTML_FILE"
  exit 1
fi
