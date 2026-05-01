@echo off
cd /d "%~dp0"
if not exist ".obsidian" (
    xcopy /E /I ".obsidian.template" ".obsidian"
    echo Setup abgeschlossen. Du kannst Obsidian jetzt oeffnen.
) else (
    echo .obsidian Ordner existiert bereits. Nichts unternommen.
)
pause