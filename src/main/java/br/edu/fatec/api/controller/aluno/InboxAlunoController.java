package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TableView;

public class InboxAlunoController {
  @FXML private TableView<?> tblMensagens;
  public void goEditor(){ SceneManager.go("aluno/Editor.fxml"); }
  public void goDashboard(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
