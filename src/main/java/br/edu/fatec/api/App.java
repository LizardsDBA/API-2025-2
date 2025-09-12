package br.edu.fatec.api;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.stage.Stage;

public class App extends Application {
    @Override
    public void start(Stage stage) {
        stage.setTitle("API 2025-2");
        stage.setScene(new Scene(new Label("App base, o inicio"), 480, 320));
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}
