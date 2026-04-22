@echo off
title BatConsole v2.5

chcp 65001 > nul

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bat-console.ps1"

pause