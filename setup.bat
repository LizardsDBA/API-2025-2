@echo off
chcp 65001 >nul
cls

echo 🚀 Configurando projeto API/TG Platform...
echo ================================================

REM Verificar Java
echo 📋 Verificando Java...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Java não encontrado!
    echo    Instale Java 17: https://adoptium.net/
    pause
    exit /b 1
) else (
    echo ✅ Java encontrado
    java -version 2>&1 | findstr "version"
)

REM Verificar Maven
echo.
echo 📋 Verificando Maven...
mvn --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Maven não encontrado!
    echo    Instale Maven: https://maven.apache.org/install.html
    pause
    exit /b 1
) else (
    echo ✅ Maven encontrado
    mvn --version | findstr "Apache Maven"
)

REM Compilar projeto
echo.
echo 🔨 Compilando projeto...
mvn clean compile
if %errorlevel% neq 0 (
    echo ❌ Erro na compilação!
    pause
    exit /b 1
) else (
    echo ✅ Compilação bem-sucedida!
)

REM Criar banco de dados
echo.
echo 🗄️  Criando banco de dados...
mvn exec:java -Dexec.mainClass="br.edu.fatec.api.AppCreateDb" -q
if %errorlevel% neq 0 (
    echo ❌ Erro ao criar banco de dados!
    pause
    exit /b 1
) else (
    echo ✅ Banco de dados criado com sucesso!
)

REM Verificar arquivos criados
echo.
echo 📁 Verificando arquivos...
if exist "api.db" (
    echo ✅ Banco de dados: api.db
) else (
    echo ❌ Banco de dados não encontrado!
)

if exist "target\classes" (
    echo ✅ Classes compiladas: target\classes\
) else (
    echo ❌ Classes não compiladas!
)

REM Informações finais
echo.
echo 🎉 Configuração concluída!
echo ================================================
echo.
echo 📚 Como usar:
echo    • Executar aplicação: mvn javafx:run
echo    • Recompilar: mvn clean compile
echo    • Recriar banco: del api.db ^&^& mvn exec:java -Dexec.mainClass="br.edu.fatec.api.AppCreateDb"
echo.
echo 👥 Usuários de teste:
echo    • Aluno: joao.aluno@fatec.sp.gov.br / 123456
echo    • Orientador: ana.orientadora@fatec.sp.gov.br / 123456
echo    • Coordenador: roberto.coordenador@fatec.sp.gov.br / 123456
echo.
echo 📖 Documentação: README.md e DOCUMENTACAO_TECNICA.md
echo.
echo ✅ Projeto pronto para desenvolvimento!
echo.
pause
