package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class VisaoGeralOrientadorController {
  public void goPainel(){ SceneManager.go("orientador/Painel.fxml"); }
  public void goNotificacoes(){ SceneManager.go("orientador/Notificacoes.fxml"); }
}
