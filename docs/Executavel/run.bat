@echo off
setlocal

REM Caminho da pasta onde está o BAT
set "DIR=%~dp0"

REM JAR da aplicação
set "APP_JAR=%DIR%api-tg-platform-1.0.0-20251121-215427-shaded.jar"

REM Pasta com os módulos JavaFX
set "FX_DIR=%DIR%javafx-lib"

REM Tenta usar o java do PATH
java --module-path "%FX_DIR%" ^
     --add-modules javafx.controls,javafx.fxml,javafx.graphics,javafx.media,javafx.web ^
     -jar "%APP_JAR%"

REM Mantém a janela aberta se der erro
echo.
pause
endlocal
