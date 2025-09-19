package br.edu.fatec.api.controller.coordenacao;

import br.edu.fatec.api.nav.SceneManager;

public class VisaoGeralCoordController {
  public void goMapa(){ SceneManager.go("coordenacao/Mapa.fxml"); }
  public void goAndamento(){ SceneManager.go("coordenacao/Andamento.fxml"); }
}
