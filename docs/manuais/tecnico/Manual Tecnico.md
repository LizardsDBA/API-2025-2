# Guia de Instalação - TG Connect

## Descrição
Este repositório contém a aplicação desenvolvida para o 2º semestre do curso de Banco de Dados da FATEC São José dos Campos - Prof. Jessen Vidal.

## Pré-requisitos
[✅] Mínimo: Java 17 LTS: Migração para versão estável e amplamente suportada <br>
[✅] Mínimo: JavaFX 17.0.2 Versão LTS compatível com Java 17 <br>
[✅] Versões estáveis: Todas as dependências com versões testadas <br>
[✅] Profiles Maven: Configuração para desenvolvimento e produção

### Estrutura de Pastas
```
src/main/java/br/edu/fatec/api/
├── App.java                    # Classe principal JavaFX
├── AppCreateDb.java           # Utilitário para criar BD
├── config/
│   └── Database.java          # Configuração SQLite
├── controller/                # Controllers MVC
│   ├── LoginController.java
│   ├── aluno/                # Telas do aluno
│   ├── orientador/           # Telas do orientador
│   └── coordenacao/          # Telas do coordenador
├── dao/                      # Data Access Objects
│   ├── GenericDAO.java       # Interface genérica
│   ├── UsuarioDAO.java       # Interface específica
│   └── impl/                 # Implementações
├── model/                    
│   ├── Usuario.java
│   ├── TrabalhoGraduacao.java
│   └── Mensagem.java
├── nav/
│   └── SceneManager.java     # Navegação entre telas
└── service/                  # Lógica de negócio
    └── UsuarioService.java
```

## Como Instalar
<ol>
    <li>Clone o repositório:</li>
</ol>
<pre><code>git clone https://github.com/LizardsDBA/tg-connect</code></pre>
<ol start="2">
    <li>Abra o código-fonte na IDE de preferência.</li>
    <li>Execute o projeto no botão "Run"</li>
</ol>


