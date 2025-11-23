# API 2º Semestre BD
# LizardsDBA - TG Connect
# Documentação - Sprint 3
<p align="center">
      <img src="/docs/assets/logo_lizards.jpeg" alt="logo LizardsDBA" width="200">

## Desafio 


## Backlog da Sprint 3

| META DA SPRINT | PREVISÃO DA SPRINT |
| :--- | :--- |
| US 6, 7, 11, 12, 13 (total de 21 Story Points) | Concluir todos os requisitos |

| RANK | PRIORIDADE | USER STORY | STORY POINTS | SPRINT | STATUS |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 6 | Alta | Como coordenador, eu quero saber quais professores orientam quais alunos e o andamento dos projetos, para que eu possa acompanhar o progresso geral e dar suporte quando necessário. | 3 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 7 | Média | Como aluno, eu quero ter acesso a um histórico completo de todas as versões do meu TG, para que eu possa ver a evolução do meu projeto e as correções passadas. | 5 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 11 | Baixa | Como aluno, eu quero conseguir comprovar o percentual de conclusão do meu TG de forma fácil, para que eu possa atender às exigências das disciplinas de TG. | 3 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 12 | Baixa | Como aluno, eu quero poder comparar diferentes versões do meu TG, para que eu possa ver as mudanças exatas que fiz ou as que o professor sugeriu. | 5 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 13 | Baixa | Como professor orientador, eu quero ter um histórico de todas as correções e feedbacks por aluno, para que eu possa acompanhar o progresso e não repetir comentários. | 5 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |

## Burndown da Sprint 3

<img width="421" height="277" alt="BurndownSprint03" src="https://github.com/user-attachments/assets/ac36c99b-447f-4423-b786-e590d4e3989a" />

## DoR - Definition of Ready - Sprint 3

### Requisitos gerais
| US | Objetivo | Clareza / Escopo | Critérios de Aceitação | Dependências / Técnica / Validação |
|----|-----------|------------------|-------------------------|------------------------------------|
| US06 | Visualizar orientadores, alunos e andamento dos TGs | Tabela/cards relacionando orientadores ↔ alunos + % de conclusão e status do TG; DAO Orientacao/Andamento; JavaFX com filtros e busca. | 1) Exibir lista de orientadores com seus alunos; 2) Mostrar status e % de cada TG; 3) Filtros por orientador e status; 4) Layout responsivo. | Independente; consultas agregadas; wireframe aprovado. |
| US07 | Histórico completo das versões do TG | Listagem cronológica das versões do TG do aluno; DAO TGVersao; Exibir data, comentário e arquivo. | 1) Exibir todas as versões do TG. | Independente; DAO validado; |
| US11 | Comprovar percentual de conclusão do TG | Exibir percentual de conclusão consolidado a partir das seções entregues; Interface simples para visualização; DAO Andamento/TGSecao. | 1) Mostrar % de conclusão total; 2) Atualizar automaticamente conforme novas versões são enviadas. | Depende de US07 e US06; validação de cálculo de progresso. |
| US12 | Comparar diferentes versões do TG | Módulo de comparação entre versões; DAO TGVersao; Destacar diferenças (texto, alterações, comentários). | 1) Selecionar duas versões; 2) Mostrar diferenças lado a lado; 3) Evidenciar adições/remoções; 4) Interface intuitiva. | Depende de US07; validação da lógica de comparação de texto. |
| US13 | Histórico de feedbacks por aluno | Exibir e registrar todos os feedbacks de um orientador por aluno; DAO Feedback/Aluno. | 1) Exibir histórico agrupado por aluno; 2) Mostrar data, versão e conteúdo; 3) Permitir filtrar por data/status. | Depende de US08 e US09; estrutura de dados validada. |

## DoD - Definition of Done  – Sprint 3

| US | Evidências de Conclusão |
|----|--------------------------|
| US06 | Listagem dos orientadores com seus respectivos alunos e status de andamento (% concluído, status do TG). Filtros e busca funcionando.|
| US07 | Exibição do histórico completo de versões do TG com data, comentário e opção de visualização funcionando.|
| US11 | Tela exibindo o percentual total de conclusão do TG.|
| US12 | Comparação entre duas versões do TG mostrando as diferenças lado a lado (adições, remoções e alterações destacadas).|
| US13 | Histórico de feedbacks por aluno exibindo data, versão e conteúdo; filtros por data e status funcionando.|

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

  

