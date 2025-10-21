# Manual do Usuário
### Login
- Tela inicial: **Login** (`views/login/Login.fxml`).
- Informe **e‑mail** e **senha**. Usuários são tipados em três perfis:
  - **Aluno**
  - **Orientador**
  - **Coordenador**

> Observação: As contas de exemplo e perfis podem ser criadas pelas *seeds* do banco. Caso não haja usuário, um administrador deverá inserir via SQL.

### Perfis e Principais Telas

#### A) Aluno
- **Dashboard** (`views/aluno/Dashboard.fxml`): visão rápida do status do TG, links para editar/acompanhar.
- **Editor** (`views/aluno/Editor.fxml`): editor de conteúdo/partes do trabalho; permite salvar versões e visualizar histórico/comparações.
- **Comparar** (`views/aluno/Comparar.fxml`): compara versões anteriores (diff) para acompanhar evolução.
- **Inbox** (`views/aluno/Inbox.fxml`): mensagens/recados relacionados ao TG.

**Fluxo comum do Aluno:**
1. Fazer login.
2. Abrir **Editor** para escrever/atualizar seções do TG.
3. Salvar; as versões ficam registradas e podem ser **comparadas** depois.
4. Ver **Inbox** para feedbacks e avisos.

#### B) Orientador
- **Painel** (`views/orientador/Painel.fxml`): lista de orientandos e atalhos para ações.
- **Editor** (`views/orientador/Editor.fxml`): validação/feedback por parte do orientador nas seções do aluno.
- **Chat** (`views/orientador/Chat.fxml`): comunicação direta com cada aluno.
- **Visão Geral** (`views/orientador/VisaoGeral.fxml`): status global dos orientandos.

**Fluxo comum do Orientador:**
1. Fazer login.
2. Abrir **Painel** para escolher um aluno.
3. Usar **Editor** para revisar/validar seções; registrar pareceres.
4. Usar **Chat** para tirar dúvidas rápidas e orientar próximos passos.

#### C) Coordenação
- **Visão Geral** (`views/coordenacao/VisaoGeral.fxml`): panorama por cursos/turmas.
- **Mapa** (`views/coordenacao/Mapa.fxml`): acompanhamento macro do progresso.

**Fluxo comum da Coordenação:**
1. Fazer login.
2. Abrir **Visão Geral** para um resumo da situação.
3. Consultar o **Mapa** para direcionar ações e políticas internas.

### Regras e Dicas de Uso
- **Auto-inicialização do Banco:** Na primeira execução, o sistema tentará preparar o banco sozinho. Se falhar por senha/permits, ajuste `Database.java` e rode de novo.
- **Senhas:** Troque a senha do usuário `tguser` no MySQL se for usar em produção, e atualize `APP_PASS`.
- **Backups:** Faça backup periódico do schema `tg_connect` em produção.

### Usuários Iniciais (Seeds)
- O arquivo `schema-app.sql` cria a estrutura e pode inserir usuários/seeds. Caso precise criar usuários manualmente:
  ```sql
  USE tg_connect;
  INSERT INTO usuarios (nome, email, senha_hash, tipo, ativo)
  VALUES ('Aluno Demo', 'aluno@exemplo.com', '$2a$10$hash_bcrypt_aqui', 'ALUNO', 1);
  ```
  > Substitua `senha_hash` por um hash válido se a aplicação validar criptografia.

---

## 3) Suporte / Troubleshooting

- **Erro de login no MySQL (root):** edite `ROOT_PASS` em `Database.java` para sua senha real.
- **Porta do MySQL diferente de 3306:** ajuste a URL JDBC em `Database.java`.
- **Tela não abre (JavaFX):** garanta que o JDK é 17+ e rode via `javafx:run` (mais simples).
- **Jar não inicia por módulos JavaFX:** rode via `mvn javafx:run` ou `mvn exec:java` (o JAR não é *fat jar* com JavaFX).
- **Seeds não aplicaram:** rode novamente; verifique logs do console e permissões do usuário do banco.
