package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TextArea;

public class EditorOrientadorController {
  @FXML private TextArea txtMarkdown;
  public void comentar(){ /* TODO: inserir feedback inline */ }
  public void voltar(){ SceneManager.go("orientador/Painel.fxml"); }
}
