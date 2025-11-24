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
    git clone https://github.com/LizardsDBA/API-2025-2.git
    ```

3. **Utilizar o executável**
    ```bash
    docs/Executavel/run.bat 
    ```
