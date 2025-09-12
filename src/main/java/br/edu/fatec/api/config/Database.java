package br.edu.fatec.api.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class Database {
    private static final String URL = "jdbc:sqlite:src/main/resources/db/api.db";

    private Database() {}

    public static Connection get() throws SQLException {
        return DriverManager.getConnection(URL);
    }
}
