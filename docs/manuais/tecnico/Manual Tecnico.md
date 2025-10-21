# Manual de Instalação

### Requisitos
- **Java JDK 17** (ou compatível com o seu ambiente; o projeto está configurado para Java 17).
- **Maven 3.9+** (para compilar/rodar via plugins).
- **MySQL 8.x** em `localhost` (com usuário `root` e senha configurada).  
- **Internet** para puxar dependências do Maven.

### Passo a passo
1. **Instale os requisitos**:
   - **Ubuntu/Debian**
     ```bash
     sudo apt update
     sudo apt install -y openjdk-17-jdk maven mysql-server
     sudo systemctl enable --now mysql
     ```
   - **Windows**
     - Instale o [**JDK 17** (Temurin/Oracle)](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) e [**Maven**](https://maven.apache.org/download.cgi) (adicione `mvn` no PATH).
     - Instale [**MySQL 8**](https://dev.mysql.com/downloads/mysql/8.0.html) (anote a senha do `root`).

2. **Obtenha o projeto**  
   Descompacte o ZIP enviado ou clone o repositório.
    ```bash
    git clone https://github.com/LizardsDBA/tg-connect/tree/07f533ad7922953bb08621aca3a262977a81fc21
    ```
   ```bash
   cd tg-connect-main/tg-connect-main
   ls
   # espera-se ver: pom.xml, src/, etc.
   ```

3. **Verifique/ajuste credenciais do banco (opcional)**  
   O projeto inicializa o banco automaticamente na primeira execução:
   - Arquivo: `src/main/java/br/edu/fatec/api/config/Database.java`
   - Por padrão:
     - ROOT_USER = `root`
     - ROOT_PASS = `""` (vazio) — **ajuste para a senha real do root** se necessário.
     - APP_USER = `tguser`
     - APP_PASS = `pass123`

   Se seu MySQL **não** permitir login do root sem senha, **edite** `ROOT_PASS` para sua senha real antes de rodar.

4. **Primeira execução**  
   - O app tentará:
     1) Executar `schema-bootstrap.sql` (com `root`) para criar DB/usuário.
     2) Executar `schema-app.sql` (com `tguser` ou fallback `root`) para criar tabelas e seeds.
   - Se aparecer erro de autenticação no MySQL, ajuste `Database.java` (usuário/senha) e rode novamente.
