# Manual do Usuário
### Login
- Tela inicial: **Login** (`views/login/Login.fxml`).
- Informe **e‑mail** e **senha**. Usuários são tipados em três perfis:
  - **Aluno**
  - **Orientador**
  - **Coordenador**

> Observação: As contas de exemplo e perfis podem ser criadas pelas *seeds* do banco. Caso não haja usuário, um administrador deverá inserir via SQL.

## Perfil Aluno
### 1. Primeiro Acesso e Dashboard
Ao entrar no sistema, você verá o **Dashboard**, sua central de controle principal.

* **Percentual de Conclusão:** Uma barra de progresso que reflete o status real do seu trabalho.
    * *Nota:* O sistema avalia exatamente **58 itens obrigatórios** (9 na apresentação, 48 nas APIs e 1 no resumo). O percentual só aumenta quando o orientador **Aprova** esses itens individualmente.
* **Pendências:** Número de correções solicitadas pelo orientador que ainda não foram resolvidas.
* **Versão Atual:** Indica a versão do documento em que você está trabalhando (ex: `v1`, `v1.1`).

## 2. Solicitação de Orientação
Se você ainda não possui um orientador vinculado, esta é sua primeira etapa.

1. Acesse o menu **Solicitação**.
2. Na lista de **Orientadores Disponíveis**, verifique o nome e e-mail dos professores.
3. Preencha os dados do projeto:
    * **Título do TG:** O nome provisório do seu trabalho.
    * **Tema:** A área de estudo.
4. Clique em **Solicitar Orientação**.

> **Status da Solicitação:**
> * **Pendente:** Aguarde o aceite do professor.
> * **Recusada:** O professor pode recusar o pedido. Se isso ocorrer, você verá uma justificativa em vermelho e poderá fazer uma nova solicitação.
> * **Aprovada:** O sistema libera automaticamente o acesso ao **Editor de TG**.

## 3. Editor de TG (Escrita e Submissão)
Acesse o menu **Editor de TG** para desenvolver o conteúdo. O trabalho é dividido em abas para facilitar a organização.

### 3.1. Estrutura do Trabalho
* **Apresentação:** Informações pessoais, histórico acadêmico/profissional e motivação.
* **APIs (1º ao 6º Semestre):** Para cada semestre, documente:
    * Empresa Parceira, Problema e Solução.
    * **Link do Repositório:** Campo obrigatório para o link do GitHub/GitLab.
    * Tecnologias, Hard Skills e Soft Skills.
* **Resumo:** Uma tabela consolidada dos projetos.
* **Considerações Finais:** Conclusão do curso.

### 3.2. Funcionalidades do Editor
* **Markdown:** Utilize a barra de ferramentas para formatar o texto (Negrito, Itálico, Títulos).
* **Feedback Visual:**
    * 🟢 **Borda Verde:** Campo aprovado pelo orientador.
    * 🔴 **Borda Vermelha:** Campo reprovado (necessita correção).
    * **Painel Lateral:** Ao clicar em qualquer campo de texto, o feedback escrito pelo orientador aparecerá na lateral direita.

### 3.3. Fluxo de Salvamento e Envio
1.  **Salvar Tudo:** Salva o rascunho na nuvem. O sistema gera uma nova "micro-versão" no banco de dados a cada salvamento.
2.  **Preview:** Gera uma visualização de como o documento ficará na versão final (HTML renderizado).
3.  **Solicitar Revisão:**
    * Use este botão quando finalizar a escrita da versão.
    * **⚠️ Atenção:** Ao solicitar revisão, o status do trabalho muda para `ENTREGUE` e **seu editor será bloqueado** para escrita até que o orientador devolva o trabalho.

## 4. Recebendo Feedback

### Comparar Versões
Quando o orientador devolve o trabalho com correções, acesse o menu **Comparar Versões**.
* **Visualização Lado a Lado:**
    * **Esquerda:** A última versão que o orientador corrigiu.
    * **Direita:** Sua versão atual.
* **Destaques:** O sistema marca em <span style="color:green">Verde</span> o que foi adicionado e em <span style="color:red">Vermelho</span> o que foi removido.

### Histórico
No menu **Histórico**, você pode acessar a linha do tempo completa de todas as versões enviadas e ler os feedbacks gerais de cada etapa.

## 5. Comunicação (Inbox)
Use a aba **Inbox** para trocar mensagens rápidas com seu orientador. O chat atualiza automaticamente a cada poucos segundos.

# 📘 Manual do Usuário: Perfil Orientador
**Sistema de Gerenciamento de Trabalhos de Graduação (TG)**

Este perfil permite gerenciar orientandos, validar entregas campo a campo e acompanhar o progresso dos TGs.

## 1. Visão Geral (Dashboard)
Ao acessar o sistema, você verá os KPIs (Indicadores de Desempenho) da sua orientação:
* **Pendências de Revisão:** Trabalhos entregues pelos alunos aguardando sua avaliação.
* **Total de Orientandos:** Número de alunos ativos sob sua responsabilidade.
* **Alunos com Reprovações:** Alunos que possuem itens marcados como "Reprovado" na versão atual.
* **TGs Concluídos:** Alunos que atingiram 100% de aprovação nos 58 critérios.

## 2. Gestão de Solicitações
Novos alunos solicitam orientação via sistema. Acesse o menu **Solicitações**.
* **Analisar:** Verifique o Nome, Título Proposto e Tema.
* **Aprovar:** O aluno é vinculado à sua lista e o TG é iniciado.
* **Recusar:** É obrigatório preencher o campo **Justificativa**. O aluno receberá essa mensagem explicando o motivo da recusa.

## 3. Painel de Orientação
O menu **Painel** lista todos os seus alunos ativos.
* **Filtro:** Utilize a opção "Mostrar apenas TGs aguardando revisão" para focar no trabalho pendente.
* **Status:**
    * *Aguardando Revisão:* O aluno enviou uma versão e está bloqueado. **Ação necessária.**
    * *Revisado (Pendências):* O trabalho está com o aluno para ajustes.
    * *Concluído:* Trabalho aprovado.

## 4. Realizando a Correção (Feedback)
Para corrigir um trabalho, vá ao menu **Feedback** (ou "Editor") e selecione um aluno na lista.

### 4.1. Ferramentas de Avaliação
Clique no botão **"Dar Feedback por Campo (Avaliar TG)"** para abrir o modal de correção.
* **Abas:** Navegue entre Apresentação, APIs (1-6), Resumo e Finais.
* **Comparação Visual:** Ative o botão **"Ver Última Correção"**. A tela se dividirá mostrando a versão anterior (esquerda) e a atual (direita) para facilitar a identificação de mudanças.

### 4.2. Emitindo Parecer
A validação é granular (campo a campo):
1. Selecione um campo na lista lateral (ex: "Problema", "Tecnologias").
2. Leia o conteúdo.
3. Clique em **Aprovar Campo** ou **Reprovar Campo**.
4. **Comentário:** Digite um feedback específico na caixa de texto. O aluno verá este comentário vinculado ao campo.

### 4.3. Finalizar Devolutiva
Após revisar os itens, clique em **"Finalizar e Enviar Devolutiva"**.
* Se houver **0 pendências**, o status do TG muda automaticamente para `APROVADO`.
* Se houver **1 ou mais reprovações**, o status muda para `REPROVADO` e o editor é liberado para o aluno corrigir.

## 5. Chat e Histórico
* **Chat:** Utilize para comunicação direta e rápida.
* **Histórico:** Permite visualizar "snapshots" (versões antigas) do trabalho do aluno para fins de auditoria ou consulta.

# 📘 Manual do Usuário: Perfil Coordenador
**Sistema de Gerenciamento de Trabalhos de Graduação (TG)**

O perfil de Coordenador possui ferramentas para visão macro do curso, acompanhamento de métricas e auditoria de trabalhos.

## 1. Visão Estratégica
O **Dashboard** inicial apresenta a saúde do curso em relação aos TGs:
* **Alunos Ativos:** Total de alunos matriculados em orientação.
* **Orientadores com Alunos:** Quantidade de professores orientando ativamente.
* **Orientadores Livres:** Professores cadastrados mas sem alunos vinculados.

## 2. Mapa de Orientação
Acesse o menu **Mapa de Orientação** para uma visão relacional completa.
* **Tabela Geral:** Exibe a relação `Professor ↔ Aluno ↔ Tema ↔ Status`.
* **Filtros:** Utilize a busca textual ou o filtro de status ("Em andamento", "Entregue", etc.) para localizar situações específicas rapidamente.

## 3. Acompanhamento de Andamento
No menu **Andamento Geral**, o foco é o cumprimento de prazos e qualidade.
* **Percentual (%):** Nível de completude do portfólio, calculado com base na validação dos 58 itens obrigatórios.
* **Status de Prazo:**
    * *Em dia:* O aluno não possui pendências acumuladas.
    * *Atrasado:* O aluno possui correções pendentes não resolvidas.
* **Última Atualização:** Data da última interação no projeto, permitindo identificar alunos estagnados.

## 4. Auditoria (Histórico de Versões)
O Coordenador tem permissão de leitura em **todos** os trabalhos do sistema para fins de auditoria.

1. Acesse o menu **Histórico de Versões**.
2. Selecione qualquer aluno na lista "Meus Orientandos" (que lista todos os alunos do curso).
3. **Linha do Tempo:** Visualize todas as versões submetidas e feedbacks trocados.
4. **Inspeção:** Ao clicar em uma versão, o sistema exibe o **Markdown** (código fonte) e o **Preview** (documento renderizado) exatamente como estavam naquela data.
