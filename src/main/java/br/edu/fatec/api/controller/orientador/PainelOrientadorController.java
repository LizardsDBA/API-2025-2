package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TableView;

public class PainelOrientadorController {
  @FXML private TableView<?> tblPendencias;
  public void goVisaoGeral(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
  public void abrirEditor(){ SceneManager.go("orientador/Editor.fxml"); }
  public void abrirChat(){ SceneManager.go("orientador/Chat.fxml"); }
}
