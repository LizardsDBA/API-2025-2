# API 2º Semestre BD
# LizardsDBA - TG Connect
# Documentação - Sprint 2
<p align="center">
      <img src="/docs/assets/logo_lizards.jpeg" alt="logo LizardsDBA" width="200">

## Desafio 

Nosso desafio nesta segunda sprint foi transformar as User Stories em funcionalidades reais. Vamos projetar o backend das telas essenciais para o Orientador e Aluno, criando um sistema funcional.

## Backlog - Sprint 2
| META DA SPRINT | PREVISÃO DA SPRINT |
| :--- | :--- |
| US 4, 8, 9, 10 (total de 24 Story Points) | US 5 (total de 5 Story Points) |

| RANK | PRIORIDADE | USER STORY | STORY POINTS | SPRINT | STATUS |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 4 | Alta | Como aluno, eu quero um campo de texto para escrever meu código em seções e traduzir para MD. | 3 | 2 | :white_check_mark: |
| 5 | Alta | Como professor orientador, eu quero visualizar o andamento de cada TG, para que eu possa gerenciar a orientação de vários alunos de forma mais eficiente. | 5 | 2 | :white_check_mark: |
| 8 | Média | Como aluno, eu quero ter um chat para conversar com o orientador do TG, para me manter ciente de todas as informações passadas por ele. | 8 | 2 | :white_check_mark:|
| 9 | Média | Como professor orientador, eu quero poder dar feedback em um chat com o aluno, para que minhas correções sejam mais claras e específicas. | 8 | 2 | :white_check_mark: |
| 10 | Média | Como professor orientador, eu quero um painel de controle que me mostre todos os projetos pendentes de feedback em um só lugar, para que eu possa priorizar meu trabalho. | 5 | 2 | :white_check_mark: |

## Burndown - Sprint 2

## DoR – Sprint 2

| US | Objetivo | Clareza / Escopo | Critérios de Aceitação | Dependências / Técnica / Validação |
|----|-----------|------------------|-------------------------|------------------------------------|
| **US04** | Campo de texto → converter para MD | Fluxo: digitação → converter → preview → salvar MD (`tg_secao`); JavaFX (TextArea + preview) + `MarkdownService`. | 1) Editor aceita texto; 2) Conversão MD; 3) Salvar MD; | Independente; padrão DAO/Service. |
| **US05** | Visualizar andamento dos TGs | Tabela/cards com % e status; DAO `Andamento`/`Orientacao`; JavaFX. | 1) Exibir %; 2) Ordenar; 3) Filtro; 4) Detalhes. | Independente; consultas agregadas; wireframe aprovado. |
| **US08** | Chat aluno↔orientador | Chat 1:1 com lista e janela de mensagens; DAO `Mensagem`, `ChatService`. | 1) Listar; 2) Enviar/receber; | Independente; UI validada; scroll eficiente. |
| **US09** | Feedback no chat | Mesmo chat (US08) com flag `feedback` vinculada à `tg_secao`. | 1) Enviar feedback; 2) Associar seção; 3) Registrar histórico. | Depende de US08; estrutura validada; sem duplicidade de dados. |
| **US10** | Painel com projetos pendentes | Dashboard com KPIs e filtros. | 1) KPIs; 2) Filtros; 3) Navegação; | Independente; layout aprovado. |

---

## 🔵 Definition of Done – Sprint 2

| US | Evidências de Conclusão |
|----|--------------------------|
| **US04** | Vídeo: digitar → converter → preview → salvar → reabrir. |
| **US05** | Screenshot dos cards/tabela. |
| **US08** | Vídeo: envio e ordenação por última mensagem. | 
| **US09** | Vídeo: envio de feedback vinculado à seção. 
| **US10** | KPIs e navegação entre cards funcionando. |

---

## Equipe

 <table>
    <tr>
      <th>Membro</th>
      <th>Função</th>
      <th>Github</th>
      <th>Linkedin</th>
      <th>Foto</th>
    </tr>
    <tr>
      <td>Lucas Castro</td>
      <td>Product Owner</td>
      <td><a href="https://github.com/stlucass"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/lucas-castro-39a427285"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_lucas.png" alt="Foto Lucas" width="90"></td>
    </tr>
    <tr>
      <td>Luiz Gustavo</td>
      <td>Scrum Master</td>
      <td><a href="https://github.com/oliveiraluizgustavo"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/luiz-gustavo-oliveira09/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_luiz.jpeg" alt="Foto Luiz" width="90"></td>
    </tr>
      <tr>
      <td>Benjamin Marques</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/maarquueess"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/benjamin-marques-48a4bb359"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_Benjamin.jpeg" alt="Foto Benjamin" width="90"></td>
    </tr>
      <td>Cauã Mohor</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/CauaDK"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/cauã-mohor-pardini"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_caua.jpeg" alt="Foto Caua" width="90"></td>
    </tr>
    <tr>
      <td>Fagner Nascimento</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/fagnerlouis"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/fagnerlouis"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_fagner.jpeg" alt="Foto Fagner" width="90"></td>
    </tr>
    <tr>
      <td>Flávio Pereira</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/jnr98"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href="https://www.linkedin.com/in/flavjuni"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_flavio.jpeg" alt="Foto Flavio" width="90"></td>
    </tr>
    <tr>
      <tr>
      <td>Matheus de Paula</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/MrMatheTrue"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href=""><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_Matheus.jpeg" alt="Foto Matheus" width="90"></td>
    </tr>
      <tr>
      <td>Richard Rangel</td>
      <td>Desenvolvedor</td>
      <td><a href="https://github.com/Richard-JV-Rangel"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a></td>
      <td><a href=""><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a></td>
      <td><img src="https://github.com/LizardsDBA/API-2025-2/blob/main/docs/assets/pfp_richard.jpeg" alt="Foto Richard" width="90"></td>
    </tr>
  </table>

  





