@echo off
rem ============================================================
rem  Lanzador — Programa de Calistenia Militar
rem ============================================================

set "HTML_FILE=%~dp0calistenia_militar.html"

if not exist "%HTML_FILE%" (
    echo ERROR: No se encontró %HTML_FILE%
    pause
    exit /b 1
)

start "" "%HTML_FILE%"
