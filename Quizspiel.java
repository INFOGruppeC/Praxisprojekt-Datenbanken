import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

public class Quizspiel {
  // Anbindung an die Datenbank
  private DatabaseConnector connector;

  // ID-Nummer des aktuellen Spielers
  private String aktuelleSpielerID;

  // Aufgaben, die aus der Datenbank ausgelesen wurden und in Zufallsreihenfolge
  // gespielt werden.
  private List<Aufgabe> offeneAufgaben;
  private int anzahlOffeneAufgaben;

  // Statistikdaten
  private int korrekteBearbeitungenSpiel, bearbeitungenSpiel;
  private int korrekteBearbeitungenGesamt, bearbeitungenGesamt;

  public Quizspiel() {
    // Aktuellen Nutzer initialisieren.
    aktuelleSpielerID = null;
    korrekteBearbeitungenSpiel = 0;
    bearbeitungenSpiel = 0;
    korrekteBearbeitungenGesamt = 0;
    bearbeitungenGesamt = 0;

    // Verbindung zur Datenbank aufbauen.
    anzahlOffeneAufgaben = 0;
    connector = new DatabaseConnector("localhost", 3306, "Quizdatenbank.db", "root", "");
    if (connector.getErrorMessage() != null) {
      JOptionPane.showMessageDialog(null, "Verbindung zur Datenbank nicht möglich. \n" + connector.getErrorMessage(),
          "Datenbankfehler", JOptionPane.ERROR_MESSAGE, null);
      System.exit(0);
    }

    // Feld fuer Aufgaben erstellen.
    offeneAufgaben = new List<Aufgabe>();
  }

  public void anmelden(String pBenutzer, String pPasswort) {
    // ID fuer den Benutzer ermitteln.
    connector.executeStatement("SELECT SpielerID FROM Spieler WHERE Benutzername = '" + pBenutzer + "' AND Passwort = '"
        + pPasswort + "';");
    QueryResult result = connector.getCurrentQueryResult();
    if (result == null || result.getData().length == 0) {
      return;
    }
    aktuelleSpielerID = result.getData()[0][0];
    // Ueberpruefen, ob Anmeldung erfolgreich war.

// aufgaben laden
    connector.executeStatement("SELECT * FROM Aufgabe;");
    result = connector.getCurrentQueryResult();
    String[][] data = result.getData();
    for (int i = 0; i < data.length; i++) {
      offeneAufgaben.append(new Aufgabe(data[i][0], data[i][1], data[i][2], data[i][3], data[i][4], data[i][5]));
    }
  }

  public boolean istAngemeldet() {
    return aktuelleSpielerID != null;
  }

  public Aufgabe gibAufgabe() {
    // Ueberpruefen, ob noch offene Aufgaben in der Pufferliste sind.
    offeneAufgaben.toFirst();
    if(!offeneAufgaben.hasAccess()){
      return null;
    }
    // SQL-Anweisung: Aufgaben nach Anzahl der Bearbeitungen durch den aktuellen
    // Spieler aufsteigend sortiert abfragen.

    // Die zwanzig am wenigsten durch den aktuellen Spieler bearbeiteten Aufgaben
    // auslesen.

    // Zufallsaufgabe ermitteln.

    return offeneAufgaben.getContent();
  }

  public void abgebenAufgabe(Aufgabe pAufgabe) {
    QueryResult result;
    // Abgegebene Aufgabe aus der Liste der offenen Aufgaben entfernen.
    offeneAufgaben.toFirst();
    while (offeneAufgaben.hasAccess() && offeneAufgaben.getContent() != pAufgabe) {
      offeneAufgaben.next();
    }
    offeneAufgaben.remove();
    // Anzahl der noch offenen Fragen reduzieren.
    anzahlOffeneAufgaben--;
    // SQL-Anweisung: Anzahl der Eintraege zum aktuellen Spieler und der aktuellen
    // Aufgabe aus der Verknuepfungstabelle ermitteln.
    // connector.executeStatement("SELECT * FROM hatBearbeitet" + aktuelleSpielerID
    // + " AND AufgabeID = " + pAufgabe.gibAufgabeID() + ";");
    // result = connector.getCurrentQueryResult();
    // result.getData();
    // Bestehenden Eintrag in Verknüpfungstabelle aktualisieren.
    connector.executeStatement(
        "UPDATE hatBearbeitet SET AnzahlBearbeitungen = AnzahlBearbeitungen + 1 AND AnzahlKorrekteBearbeitungen = AnzahlKorrekteBearbeitungen "
            + (pAufgabe.korrektBeantwortet() ? "+ 1" : "") + " WHERE SpielerID = "
            + aktuelleSpielerID + " AND AufgabeID = " + pAufgabe.gibAufgabeID() + ";");
    result = connector.getCurrentQueryResult();
    // SQL-Anweisung: Anzahl der bisherigen Bearbeitungen generell und der korrekten
    // Bearbeitungen abfragen.
    // connector.executeStatement("SELECT AnzahlBearbeitungen,
    // AnzahlKorrekteBearbeitungen FROM hatBearbeitet WHERE SpielerID = " +
    // aktuelleSpielerID+ ";");
    // Werte entsprechen der aktuellen Bearbeitung aktualisieren.

    // Neue Werte in die Datenbank uebertragen.

  }

  public int gibKorrekteBearbeitungenGesamt() {
    return korrekteBearbeitungenGesamt;
  }

  public int gibBearbeitungenGesamt() {
    return bearbeitungenGesamt;
  }

  public int gibKorrekteBearbeitungenSpiel() {
    return korrekteBearbeitungenSpiel;
  }

  public int gibBearbeitungenSpiel() {
    return bearbeitungenSpiel;
  }

}
