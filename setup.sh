#!/bin/bash

# Script de configuração do projeto API/TG Platform
# Compatível com Linux e macOS

echo "🚀 Configurando projeto API/TG Platform..."
echo "================================================"

# Verificar Java
echo "📋 Verificando Java..."
if command -v java &> /dev/null; then
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
    echo "✅ Java encontrado: $(java -version 2>&1 | head -n 1)"
    
    if [ "$JAVA_VERSION" -lt 17 ]; then
        echo "⚠️  Aviso: Java 17+ é recomendado. Versão atual: $JAVA_VERSION"
        echo "   Instale Java 17: https://adoptium.net/"
    fi
else
    echo "❌ Java não encontrado!"
    echo "   Instale Java 17: https://adoptium.net/"
    exit 1
fi

# Verificar Maven
echo ""
echo "📋 Verificando Maven..."
if command -v mvn &> /dev/null; then
    echo "✅ Maven encontrado: $(mvn --version | head -n 1)"
else
    echo "❌ Maven não encontrado!"
    echo "   Instale Maven: https://maven.apache.org/install.html"
    exit 1
fi

# Compilar projeto
echo ""
echo "🔨 Compilando projeto..."
if mvn clean compile; then
    echo "✅ Compilação bem-sucedida!"
else
    echo "❌ Erro na compilação!"
    exit 1
fi

# Criar banco de dados
echo ""
echo "🗄️  Criando banco de dados..."
if mvn exec:java -Dexec.mainClass="br.edu.fatec.api.AppCreateDb" -q; then
    echo "✅ Banco de dados criado com sucesso!"
else
    echo "❌ Erro ao criar banco de dados!"
    exit 1
fi

# Verificar arquivos criados
echo ""
echo "📁 Verificando arquivos..."
if [ -f "api.db" ]; then
    echo "✅ Banco de dados: api.db ($(du -h api.db | cut -f1))"
else
    echo "❌ Banco de dados não encontrado!"
fi

if [ -d "target/classes" ]; then
    echo "✅ Classes compiladas: target/classes/"
else
    echo "❌ Classes não compiladas!"
fi

# Informações finais
echo ""
echo "🎉 Configuração concluída!"
echo "================================================"
echo ""
echo "📚 Como usar:"
echo "   • Executar aplicação: mvn javafx:run"
echo "   • Recompilar: mvn clean compile"
echo "   • Recriar banco: rm api.db && mvn exec:java -Dexec.mainClass=\"br.edu.fatec.api.AppCreateDb\""
echo ""
echo "👥 Usuários de teste:"
echo "   • Aluno: joao.aluno@fatec.sp.gov.br / 123456"
echo "   • Orientador: ana.orientadora@fatec.sp.gov.br / 123456"
echo "   • Coordenador: roberto.coordenador@fatec.sp.gov.br / 123456"
echo ""
echo "📖 Documentação: README.md e DOCUMENTACAO_TECNICA.md"
echo ""
echo "✅ Projeto pronto para desenvolvimento!"
