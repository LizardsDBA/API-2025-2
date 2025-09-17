package br.edu.fatec.api.controller;

import br.edu.fatec.api.App;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

import java.io.IOException;

public class LoginControl {

    @FXML
    private void switchAluno() throws IOException {
        App.setRoot("aluno");
    }
    @FXML
    private void switchCoord() throws IOException {
        App.setRoot("coordenador");
    }
    @FXML
    private void switchOrientador() throws IOException {
        App.setRoot("orientador");
    }
}
