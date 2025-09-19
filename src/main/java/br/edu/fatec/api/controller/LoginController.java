package br.edu.fatec.api.controller;

import br.edu.fatec.api.nav.SceneManager;

public class LoginController {
  public void goAluno(){ SceneManager.go("aluno/Dashboard.fxml"); }
  public void goOrientador(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
  public void goCoordenador(){ SceneManager.go("coordenacao/VisaoGeral.fxml"); }
}
