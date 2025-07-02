/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pempekku;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Aliph Rakha Ardhana
 */
public class DatabaseConnect {
/**
 *
 * @author Aliph Rakha Ardhana
 */
        public static Connection connect() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/pempekjabar", "root", ""); // Ubah sesuai
            System.out.println("Koneksi berhasil");
        } catch (Exception e) {
            System.out.println("Koneksi gagal: " + e.getMessage());
        }
        return conn;
    }}

