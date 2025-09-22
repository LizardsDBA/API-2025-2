package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;
import javafx.event.ActionEvent;

public class VisaoGeralOrientadorController {
  public void goPainel(){ SceneManager.go("orientador/Painel.fxml"); }
  public void goNotificacoes(){ SceneManager.go("orientador/Notificacoes.fxml"); }
    public void goEditor(){ SceneManager.go("orientador/Editor.fxml"); }
    public void goParecer(){ SceneManager.go("orientador/Parecer.fxml"); }
    public void goImportar(){ SceneManager.go("orientador/Importar.fxml"); }
    public void goChat(){ SceneManager.go("orientador/Chat.fxml"); }
    public void goHome(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
    public void logout(){ SceneManager.go("login/Login.fxml");}

}
