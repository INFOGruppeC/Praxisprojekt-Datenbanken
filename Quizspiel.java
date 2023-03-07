import javax.swing.ImageIcon; 
import javax.swing.JOptionPane;

public class Quizspiel{
  //Anbindung an die Datenbank
  private DatabaseConnector connector;

  //ID-Nummer des aktuellen Spielers
  private String aktuelleSpielerID;

  //Aufgaben, die aus der Datenbank ausgelesen wurden und in Zufallsreihenfolge gespielt werden.
  private List<Aufgabe> offeneAufgaben;
  private int anzahlOffeneAufgaben;

  //Statistikdaten
  private int korrekteBearbeitungenSpiel, bearbeitungenSpiel;
  private int korrekteBearbeitungenGesamt, bearbeitungenGesamt;

  public Quizspiel(){
    //Aktuellen Nutzer initialisieren. 
    aktuelleSpielerID = null;
    korrekteBearbeitungenSpiel = 0;
    bearbeitungenSpiel = 0;
    korrekteBearbeitungenGesamt = 0;
    bearbeitungenGesamt = 0;

    //Verbindung zur Datenbank aufbauen.
    anzahlOffeneAufgaben = 0;
    connector = new DatabaseConnector("localhost","3306","Quizdatenbank","root","");
    if (connector.getErrorMessage() != null){
      JOptionPane.showMessageDialog(null,"Verbindung zur Datenbank nicht möglich. \n"+connector.getErrorMessage(),"Fehlermeldung",JOptionPane.ERROR_MESSAGE,null); 
      System.exit(0);
    }    

    //Feld fuer Aufgaben erstellen.
    offeneAufgaben = new List<Aufgabe>();
  }

  public void anmelden(String pBenutzer, String pPasswort){
    //ID fuer den Benutzer ermitteln.
    
    //Ueberpruefen, ob Anmeldung erfolgreich war.
    
    
  }

  public boolean istAngemeldet(){    
    return aktuelleSpielerID != null;
  }

  public Aufgabe gibAufgabe(){
    //Ueberpruefen, ob noch offene Aufgaben in der Pufferliste sind.
    
      //SQL-Anweisung: Aufgaben nach Anzahl der Bearbeitungen durch den aktuellen Spieler aufsteigend sortiert abfragen.
      

      //Die zwanzig am wenigsten durch den aktuellen Spieler bearbeiteten Aufgaben auslesen.
      
    

    //Zufallsaufgabe ermitteln.
    
    return offeneAufgaben.getContent();
  }

  public void abgebenAufgabe(Aufgabe pAufgabe){
    //Abgegebene Aufgabe aus der Liste der offenen Aufgaben entfernen.
    
    //Anzahl der noch offenen Fragen reduzieren.
    

    //SQL-Anweisung: Anzahl der Eintraege zum aktuellen Spieler und der aktuellen Aufgabe aus der Verknuepfungstabelle ermitteln.
    
       //Bestehenden Eintrag in Verknüpfungstabelle aktualisieren.
       
    //SQL-Anweisung: Anzahl der bisherigen Bearbeitungen generell und der korrekten Bearbeitungen abfragen.
     
      //Werte entsprechen der aktuellen Bearbeitung aktualisieren.
    
      //Neue Werte in die Datenbank uebertragen.
     
  } 

  public int gibKorrekteBearbeitungenGesamt(){
    return korrekteBearbeitungenGesamt;
  }

  public int gibBearbeitungenGesamt(){
    return bearbeitungenGesamt;
  }

  public int gibKorrekteBearbeitungenSpiel(){
    return korrekteBearbeitungenSpiel;
  }

  public int gibBearbeitungenSpiel(){
    return bearbeitungenSpiel;
  }

}

