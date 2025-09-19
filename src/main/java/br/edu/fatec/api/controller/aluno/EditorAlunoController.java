package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TextArea;

public class EditorAlunoController {
  @FXML private TextArea txtMarkdown;
  public void salvar(){ /* TODO: chamar service/DAO para inserir nova versão */ }
  public void enviar(){ /* TODO: notificar orientador */ }
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
