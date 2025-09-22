package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;

/**
 * Controller para o Inbox do Aluno
 */
public class InboxAlunoController {
    
    @FXML
    public void initialize() {
        System.out.println("Inbox do Aluno carregado");
    }
    
    // Navegação do menu lateral
    @FXML
    public void goDashboard() {
        SceneManager.go("aluno/Dashboard.fxml");
    }
    
    @FXML
    public void goInbox() {
        SceneManager.go("aluno/Inbox.fxml");
    }
    
    @FXML
    public void goEditor() {
        SceneManager.go("aluno/Editor.fxml");
    }
    
    @FXML
    public void goComparar() {
        SceneManager.go("aluno/Comparar.fxml");
    }
    
    @FXML
    public void goConclusao() {
        SceneManager.go("aluno/Conclusao.fxml");
    }
    
    @FXML
    public void goHistorico() {
        SceneManager.go("aluno/Historico.fxml");
    }
    
    @FXML
    public void goChat() {
        SceneManager.go("aluno/Chat.fxml");
    }
    
    // Navegação do header
    @FXML
    public void goHome() {
        SceneManager.go("aluno/Dashboard.fxml");
    }
    
    @FXML
    public void logout() {
        SceneManager.go("login/Login.fxml");
    }
}
