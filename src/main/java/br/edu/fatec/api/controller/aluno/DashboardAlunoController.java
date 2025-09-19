package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class DashboardAlunoController {
  public void goInbox(){ SceneManager.go("aluno/Inbox.fxml"); }
  public void goEditor(){ SceneManager.go("aluno/Editor.fxml"); }
  public void goHistorico(){ SceneManager.go("aluno/Historico.fxml"); }
  public void goConclusao(){ SceneManager.go("aluno/Conclusao.fxml"); }
  public void goComparar(){ SceneManager.go("aluno/Comparar.fxml"); }
  public void goChat(){ SceneManager.go("aluno/Chat.fxml"); }
}
