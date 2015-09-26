package org.mypackage.hello;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * Ta klasa reprezentuje polaczenia z bazami danych.
 */
public class Bazadanych {
  
    //private String urlMySQL="jdbc:mysql://johnny.heliohost.org:3306/";
    //private String dbNameMySQL="hariseld_dania";
    //private String driverMySQL="com.mysql.jdbc.Driver";
    //private String userNameKlientMySQL="hariseld_hari";
    //private String passwordKlientMySQL="qweqwe";
    
    private final String urlMySQL="jdbc:mysql://localhost:3306/";
    private final String dbNameMySQL="dania";
    private final String driverMySQL="com.mysql.jdbc.Driver";
    private final String userNameKlientMySQL="root";
    private final String passwordKlientMySQL="";
    
    //private String urlPostgreSQL="jdbc:postgresql://johnny.heliohost.org:5432/";
    //private String dbNamePostgreSQL="hariseld_zlecenia";
    //private String driverPostgreSQL="org.postgresql.Driver";
    //private String userNameAdminPostgreSQL="hariseld";
    //private String passwordAdminPostgreSQL="123qwe";
    
    private final String urlPostgreSQL="jdbc:mysql://localhost:3306/";
    private final String dbNamePostgreSQL="dania";
    private final String driverPostgreSQL="com.mysql.jdbc.Driver";
    private final String userNameAdminPostgreSQL="root";
    private final String passwordAdminPostgreSQL="";
    
    
    private final String userNameAdminMySQL="root";
    private final String passwordAdminMySQL="";
    
    /**
     * 
     * @return polaczenie z baza danych MySQL - ograniczone uprawnienia.
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public Connection connectKlientMySQL() throws SQLException, ClassNotFoundException{
        
        Connection connection;
        Class.forName(driverMySQL);
        connection = DriverManager.getConnection(urlMySQL+dbNameMySQL,userNameKlientMySQL,passwordKlientMySQL);
        return connection;
    
    }
    
    /**
     * 
     * @return polaczenie z baza danych MySQL - pelne uprawnienia.
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public Connection connectAdminMySQL() throws SQLException, ClassNotFoundException{
        
        Connection connection;
        Class.forName(driverMySQL);
        connection = DriverManager.getConnection(urlMySQL+dbNameMySQL,userNameAdminMySQL,passwordAdminMySQL);
        return connection;
    
    }
    
    /**
     * 
     * @return polaczenie z baza danych PostgreSQL - pelne uprawnienia.
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public Connection connectAdminPostgreSQL() throws SQLException, ClassNotFoundException{
        
        Connection connection;
        Class.forName(driverPostgreSQL);
        connection = DriverManager.getConnection(urlPostgreSQL+dbNamePostgreSQL,userNameAdminPostgreSQL,passwordAdminPostgreSQL);
        return connection;
    
    }
   
}