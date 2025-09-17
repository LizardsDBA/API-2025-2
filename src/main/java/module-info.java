module org.example {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires javafx.graphics;

    opens br.edu.fatec.api to javafx.graphics, javafx.fxml;
    exports br.edu.fatec.api;
    exports br.edu.fatec.api.controller;
    opens br.edu.fatec.api.controller to javafx.fxml, javafx.graphics;
}
