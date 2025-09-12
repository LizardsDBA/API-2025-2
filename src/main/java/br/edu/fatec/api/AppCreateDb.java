package br.edu.fatec.api;

import br.edu.fatec.api.config.Database;
import java.sql.Connection;

public class AppCreateDb {
    public static void main(String[] args) {
        try (Connection c = Database.get()) {
            System.out.println("Banco criado/aberto em: api.db");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
