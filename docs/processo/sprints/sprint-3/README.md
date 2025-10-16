# API 2º Semestre BD
# LizardsDBA - TG Connect
# Documentação - Sprint 2
<p align="center">
      <img src="/docs/assets/logo_lizards.jpeg" alt="logo LizardsDBA" width="200">

## Desafio 

Nosso desafio nesta segunda sprint foi transformar as User Stories em funcionalidades reais. Vamos projetar o backend as telas essenciais para o Orientador e Aluno, criando um sistema funcional.

## Backlog da Sprint 2
| RANK | PRIORIDADE | USER STORY | STORY POINTS | SPRINT | STATUS |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | Alta | Como professor orientador, eu quero visualizar o andamento de cada TG, para que eu possa gerenciar a orientação de vários alunos de forma mais eficiente. | 5 | 2 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 5 | Média | Como aluno, eu quero ter um chat para conversar com o orientador do TG, para me manter ciente de todas as informações passadas por ele. | 8 |  2 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 6 | Média | Como professor orientador, eu quero poder dar feedback em um chat com o aluno, para que minhas correções sejam mais claras e específicas. | 8 | 2 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 7 | Média | Como professor orientador, eu quero um painel de controle que me mostre todos os projetos pendentes de feedback em um só lugar, para que eu possa priorizar meu trabalho.  | 5 | 2 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |
| 8 | Baixa | Como aluno, eu quero conseguir comprovar o percentual de conclusão do meu TG de forma fácil, para que eu possa atender às exigências das disciplinas de TG. | 3 | 3 | <img width="50" height="50" alt="image" src="https://github.com/user-attachments/assets/02ef439d-2c01-46d1-9b6e-62fbe6173873" /> |

## Burndown da Sprint 2

## DoR - Definition of Ready - Sprint 2

### Requisitos gerais

|              Critério              | Descrição                                                                                          |
| :--------------------------------: | -------------------------------------------------------------------------------------------------- |
|        Clareza na Descrição        | A User Story está escrita no formato “Como [persona], quero [ação] para que [objetivo]”            |
|  Critérios de Aceitação Definidos  | A história possui critérios objetivos que indicam o que é necessário para considerá-la concluída.  |
|  Cenários de Teste Especificados   | A história tem pelo menos 1 cenário de teste estruturado (Dado, Quando, Então).                    |
|            Independente            | A história pode ser implementada sem depender de outra tarefa da mesma Sprint.                     |
|      Escopo Técnico Validado       | Há clareza se a história envolve frontend, backend ou ambos — com pontos de integração definidos.  |
|             Estímável              | A história foi pontuada no Planning Poker ou tem uma estimativa clara.                             |
|     Validação com PO e equipe      | A história foi discutida em refinamento ou planning e validada com o time dev.                     |
| Alinhamento com arquitetura atual  | A funcionalidade proposta está coerente com o que já entregue na Sprint 1.                         |

## DoD - Definition of Done  – Sprint 2

|                 Critério                 | Descrição                                                                                                        |
| :--------------------------------------: | ---------------------------------------------------------------------------------------------------------------- |
|     Critérios de Aceitação atendidos     | Todos os critérios definidos na US foram implementados e validados com sucesso.                                  |
| Cenários de Teste executados e aprovados | Todos os cenários descritos foram validados manualmente.                                                         |
|      Código revisado (Code Review)       | A US passou por revisão antes da integração.                                                                     |
|  Integrado com o restante da aplicação   | A funcionalidade foi testada junto com o fluxo completo do sistema (Ex: Envio → Correção → Feedback). |
|         Validação final com o PO         | O PO testou e confirmou que a funcionalidade atende ao esperado.                                                 |
|            Pronta para Deploy            | A funcionalidade pode ser entregue ao ambiente final sem pendências.                                             |

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

  

