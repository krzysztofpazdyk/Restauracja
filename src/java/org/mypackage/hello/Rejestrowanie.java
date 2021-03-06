
package org.mypackage.hello;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * Ta klasa reprezentuje weryfikowanie danych podanych podczas rejestarcji i rejestrowanie nowego uzytkownika.
 */
public class Rejestrowanie {
    
    private String imie="Brak";
    private String nazwisko="Brak";
    private String login="Brak";
    private String password="Brak";

    /**
     * @return the imie
     */
    public String getImie() {
        return imie;
    }

    /**
     * @param imie the imie to set
     */
    public void setImie(String imie) {
        this.imie = imie;
    }

    /**
     * @return the nazwisko
     */
    public String getNazwisko() {
        return nazwisko;
    }

    /**
     * @param nazwisko the nazwisko to set
     */
    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    /**
     * @return the login
     */
    public String getLogin() {
        return login;
    }

    /**
     * @param login the login to set
     */
    public void setLogin(String login) {
        this.login = login;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    
    /**
     * Weryfikuje czy dane podane podczas rejestracji byly prawidlowe, sprawdza czy dany uzytkownik juz istnieje w systemie oraz jesli nie istnieje to tworzy konto uzytkownika.
     * @return String zawierajacy informacje czy wystapil blad
     * @throws SQLException 
     */
    public String weryfikuj() throws SQLException {
        String blad = "Nie";
        Connection conn = null;
        ResultSet rst;
        String sql;
        
        if ((getImie().equals("Brak")) || (getImie().trim().equals(""))) {
            blad="Wprowadzono niepoprawne imie";
         }
        if ((getNazwisko().equals("Brak")) || (getNazwisko().trim().equals(""))) {
            if (blad.equals("Nie")) {
                blad="Wprowadzono niepoprawne nazwisko";
             } else {
                blad=blad+",<br />niepoprawne nazwisko";
             }
        }
        if ((getLogin().equals("Brak")) || (getLogin().trim().equals(""))) {
            if (blad.equals("Nie")) {
              blad="Wprowadzono niepoprawny login";
            } else {
                blad=blad+",<br />niepoprawny login";
            }
        }
  
        if ((getPassword().equals("Brak")) || (getPassword().trim().equals(""))) {
            if (blad.equals("Nie")) {
                  blad="Wprowadzono niepoprawne haslo";
            } else {
                blad=blad+",<br />niepoprawne haslo";
                }
        }
        
        if (blad.equals("Nie")) {
        
            try {

                Bazadanych baza = new Bazadanych(); 
                conn = baza.connectKlientMySQL();
                
                sql="select count(login) from users where login='"+getLogin()+"'";
                Statement statement0=conn.createStatement();
                rst=statement0.executeQuery(sql);
                rst.next();

                if (rst.getInt(1)>0) {
                    blad="Taki login zostal juz zarejestrowany, musisz wybrac inny.";
                }
                        else {
                        sql="insert into `users` values (?,?,?,?,?,?)";
                        PreparedStatement statement=conn.prepareStatement(sql);
                        statement.setInt(1,0);
                        statement.setString(2, getImie());
                        statement.setString(3, getNazwisko());
                        statement.setString(4, getLogin());
                        statement.setString(5, getPassword());
                        statement.setInt(6,0);
                        statement.executeUpdate();
                        blad="Dziekujemy za rejestracje. Zaloguj sie.";
                  }

               }
              catch (Exception e) {
                 blad="Blad polaczenia z baza danych";
               }
            finally { conn.close(); }
        }
        else {
            blad=blad+".";
        }
        
  
       return blad;
    } 
}
