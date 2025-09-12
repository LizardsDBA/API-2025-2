module org.example {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;

    opens br.edu.fatec.api to javafx.graphics, javafx.fxml;
    exports br.edu.fatec.api;
}
